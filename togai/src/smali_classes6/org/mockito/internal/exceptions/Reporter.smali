.class public Lorg/mockito/internal/exceptions/Reporter;
.super Ljava/lang/Object;
.source "Reporter.java"


# static fields
.field private static final NON_PUBLIC_PARENT:Ljava/lang/String; = "Mocking methods declared on non-public parent classes is not supported."


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static argumentsAreDifferent(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/AssertionError;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Location;",
            ">;)",
            "Ljava/lang/AssertionError;"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 303
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nArgument(s) are different! Wanted:\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    .line 313
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v4, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {v4}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    .line 314
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\nActual invocations have different arguments:\n"

    .line 315
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 318
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 319
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 320
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 323
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 324
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 325
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 328
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lorg/mockito/internal/junit/ExceptionFactory;->createArgumentsAreDifferentException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object p0

    return-object p0

    .line 304
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "actualCalls and actualLocations list must match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static atMostAndNeverShouldNotBeUsedWithTimeout()Lorg/mockito/exceptions/base/MockitoException;
    .locals 9

    .line 680
    new-instance v0, Lorg/mockito/exceptions/misusing/FriendlyReminderException;

    const-string v1, ""

    const-string v2, "Don\'t panic! I\'m just a friendly reminder!"

    const-string v3, "timeout() should not be used with atMost() or never() because..."

    const-string v4, "...it does not make much sense - the test would have passed immediately in concurrency"

    const-string v5, "We kept this method only to avoid compilation errors when upgrading Mockito."

    const-string v6, "In future release we will remove timeout(x).atMost(y) from the API."

    const-string v7, "If you want to find out more please refer to issue 235"

    const-string v8, ""

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/FriendlyReminderException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static cannotCallAbstractRealMethod()Lorg/mockito/exceptions/base/MockitoException;
    .locals 5

    .line 629
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v1, "  //correct example:"

    const-string v2, "  when(mockOfConcreteClass.nonAbstractMethod()).thenCallRealMethod();"

    const-string v3, "Cannot call abstract real method on java object!"

    const-string v4, "Calling real methods is only possible when mocking non abstract method."

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static cannotCreateTimerWithNegativeDurationTime(J)Lorg/mockito/exceptions/base/MockitoException;
    .locals 7

    .line 851
    new-instance v0, Lorg/mockito/exceptions/misusing/FriendlyReminderException;

    const-string v1, ""

    const-string v2, "Don\'t panic! I\'m just a friendly reminder!"

    const-string v3, "It is impossible for time to go backward, therefore..."

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "You cannot put negative value of duration: ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "as argument of timer methods (after(), timeout())"

    const-string v6, ""

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/misusing/FriendlyReminderException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static cannotInitializeForInjectMocksAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 8

    .line 670
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot instantiate @InjectMocks field named \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\'! Cause: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "You haven\'t provided the instance at field declaration so I tried to construct the instance."

    const-string v3, "Examples of correct usage of @InjectMocks:"

    const-string v4, "   @InjectMocks Service service = new Service();"

    const-string v5, "   @InjectMocks Service service;"

    const-string v6, "   //and... don\'t forget about some @Mocks for injection :)"

    const-string v7, ""

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static cannotInitializeForSpyAnnotation(Ljava/lang/String;Ljava/lang/Exception;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 9

    .line 659
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot instantiate a @Spy for \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\' field."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "You haven\'t provided the instance for spying at field declaration so I tried to construct the instance."

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "However, I failed because: "

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 661
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Examples of correct usage of @Spy:"

    const-string v5, "   @Spy List mock = new LinkedList();"

    const-string v6, "   @Spy Foo foo; //only if Foo has parameterless constructor"

    const-string v7, "   //also, don\'t forget about MockitoAnnotations.initMocks();"

    const-string v8, ""

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    .line 659
    invoke-static {p0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static cannotInjectDependency(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Exception;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 4

    .line 714
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Mockito couldn\'t inject mock dependency \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 715
    invoke-static {p1}, Lorg/mockito/internal/util/MockUtil;->getMockName(Ljava/lang/Object;)Lorg/mockito/mock/MockName;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\' on field "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "whose type \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 717
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "\' was annotated by @InjectMocks in your test."

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Also I failed because: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 718
    invoke-static {p2}, Lorg/mockito/internal/exceptions/Reporter;->exceptionCauseMessageIfAvailable(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    filled-new-array {p1, v1, p0, v2, v3}, [Ljava/lang/Object;

    move-result-object p0

    .line 714
    invoke-static {p0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static cannotMockClass(Ljava/lang/Class;Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/mockito/exceptions/base/MockitoException;"
        }
    .end annotation

    .line 471
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot mock/spy "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Mockito cannot mock/spy because :"

    filled-new-array {p0, v1, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 471
    invoke-static {p0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static cannotStubVoidMethodWithAReturnValue(Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 17

    .line 479
    new-instance v0, Lorg/mockito/exceptions/misusing/CannotStubVoidMethodWithReturnValue;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is a *void method* and it *cannot* be stubbed with a *return value*!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Voids are usually stubbed with Throwables:"

    const-string v4, "    doThrow(exception).when(mock).someVoidMethod();"

    const-string v5, "If you need to set the void method to do nothing you can use:"

    const-string v6, "    doNothing().when(mock).someVoidMethod();"

    const-string v7, "For more information, check out the javadocs for Mockito.doNothing()."

    const-string v8, "***"

    const-string v9, "If you\'re unsure why you\'re getting above error read on."

    const-string v10, "Due to the nature of the syntax above problem might occur because:"

    const-string v11, "1. The method you are trying to stub is *overloaded*. Make sure you are calling the right overloaded version."

    const-string v12, "2. Somewhere in your test you are stubbing *final methods*. Sorry, Mockito does not verify/stub final methods."

    const-string v13, "3. A spy is stubbed using when(spy.foo()).then() syntax. It is safer to stub spies - "

    const-string v14, "   - with doReturn|Throw() family of methods. More in javadocs for Mockito.spy() method."

    const-string v15, "4. Mocking methods declared on non-public parent classes is not supported."

    const-string v16, ""

    filled-new-array/range {v2 .. v16}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/CannotStubVoidMethodWithReturnValue;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static cannotStubWithNullThrowable()Lorg/mockito/exceptions/base/MockitoException;
    .locals 2

    .line 67
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v1, "Cannot stub with null throwable!"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static cannotVerifyToString()Lorg/mockito/exceptions/base/MockitoException;
    .locals 4

    .line 638
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v1, "toString() is too often used behind of scenes  (i.e. during String concatenation, in IDE debugging views). Verifying it may give inconsistent or hard to understand results. Not to mention that verifying toString() most likely hints awkward design (hard to explain in a short exception message. Trust me...)"

    const-string v2, "However, it is possible to stub toString(). Stubbing toString() smells a bit funny but there are rare, legitimate use cases."

    const-string v3, "Mockito cannot verify toString()"

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static checkedExceptionInvalid(Ljava/lang/Throwable;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 3

    .line 60
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Checked exception is invalid for this method!"

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static createAllLocationsMessage(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Location;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "\n"

    if-nez p0, :cond_0

    return-object v0

    .line 415
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 416
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mockito/invocation/Location;

    .line 417
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 419
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createTooFewInvocationsMessage(Lorg/mockito/internal/reporting/Discrepancy;Lorg/mockito/invocation/DescribedInvocation;Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/internal/reporting/Discrepancy;",
            "Lorg/mockito/invocation/DescribedInvocation;",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Location;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 426
    invoke-interface {p1}, Lorg/mockito/invocation/DescribedInvocation;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Wanted "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0}, Lorg/mockito/internal/reporting/Discrepancy;->getPluralizedWantedCount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/mockito/internal/reporting/Discrepancy;->getWantedCount()I

    move-result v1

    const-string v2, "."

    const-string v3, ":"

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    new-instance p1, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {p1}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    const/4 v1, 0x2

    aput-object p1, v0, v1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "But was "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p0}, Lorg/mockito/internal/reporting/Discrepancy;->getPluralizedActualCount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/mockito/internal/reporting/Discrepancy;->getActualCount()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v0, p1

    const/4 p0, 0x4

    .line 430
    invoke-static {p2}, Lorg/mockito/internal/exceptions/Reporter;->createAllLocationsMessage(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, p0

    .line 425
    invoke-static {v0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createTooManyInvocationsMessage(IILorg/mockito/invocation/DescribedInvocation;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/mockito/invocation/DescribedInvocation;",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Location;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 385
    invoke-interface {p2}, Lorg/mockito/invocation/DescribedInvocation;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Wanted "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 386
    invoke-static {p0}, Lorg/mockito/internal/reporting/Pluralizer;->pluralize(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ":"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {v2}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "But was "

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 388
    invoke-static {p1}, Lorg/mockito/internal/reporting/Pluralizer;->pluralize(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 389
    invoke-static {p3}, Lorg/mockito/internal/exceptions/Reporter;->createAllLocationsMessage(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p0

    .line 384
    invoke-static {p0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createWantedButNotInvokedMessage(Lorg/mockito/invocation/DescribedInvocation;)Ljava/lang/String;
    .locals 3

    .line 358
    invoke-interface {p0}, Lorg/mockito/invocation/DescribedInvocation;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {v0}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    const-string v1, ""

    const-string v2, "Wanted but not invoked:"

    filled-new-array {v2, p0, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    .line 356
    invoke-static {p0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static defaultAnswerDoesNotAcceptNullParameter()Lorg/mockito/exceptions/base/MockitoException;
    .locals 2

    .line 811
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v1, "defaultAnswer() does not accept null parameter"

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static delegatedMethodDoesNotExistOnDelegate(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 3

    .line 837
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "When calling: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " on mock: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 839
    invoke-static {p1}, Lorg/mockito/internal/util/MockUtil;->getMockName(Ljava/lang/Object;)Lorg/mockito/mock/MockName;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "(delegate instance had type: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 842
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Methods called on mock must exist in delegated instance."

    const-string v1, "no such method was found."

    const-string v2, "Check that the instance passed to delegatesTo() is of the correct type or contains compatible methods"

    filled-new-array {p2, p0, v1, v2, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 837
    invoke-static {p0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static delegatedMethodHasWrongReturnType(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 3

    .line 827
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "When calling: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on mock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 829
    invoke-static {p2}, Lorg/mockito/internal/util/MockUtil;->getMockName(Ljava/lang/Object;)Lorg/mockito/mock/MockName;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "return type should be: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 830
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ", but was: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "(delegate instance had type: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 832
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ")"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Methods called on delegated instance must have compatible return types with the mock."

    const-string v1, "Check that the instance passed to delegatesTo() is of the correct type or contains compatible methods"

    filled-new-array {p3, p2, p0, v1, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 827
    invoke-static {p0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static exceptionCauseMessageIfAvailable(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 1

    .line 724
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 725
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 727
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static extraInterfacesAcceptsOnlyInterfaces(Ljava/lang/Class;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/mockito/exceptions/base/MockitoException;"
        }
    .end annotation

    .line 597
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "You passed following type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " which is not an interface."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "extraInterfaces() accepts only interfaces."

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 597
    invoke-static {p0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static extraInterfacesCannotContainMockedType(Ljava/lang/Class;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/mockito/exceptions/base/MockitoException;"
        }
    .end annotation

    .line 604
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "You mocked following type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "and you passed the same very interface to the extraInterfaces()"

    const-string v2, "extraInterfaces() does not accept the same type as the mocked type."

    filled-new-array {v2, p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    .line 604
    invoke-static {p0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static extraInterfacesDoesNotAcceptNullParameters()Lorg/mockito/exceptions/base/MockitoException;
    .locals 2

    .line 591
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v1, "extraInterfaces() does not accept null parameters."

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static extraInterfacesRequiresAtLeastOneInterface()Lorg/mockito/exceptions/base/MockitoException;
    .locals 2

    .line 612
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v1, "extraInterfaces() requires at least one interface."

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static fieldInitialisationThrewException(Ljava/lang/reflect/Field;Ljava/lang/Throwable;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 4

    .line 691
    new-instance v0, Lorg/mockito/exceptions/misusing/InjectMocksException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot instantiate @InjectMocks field named \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 692
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' of type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\'."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "However the constructor or the initialization block threw an exception : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 694
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, "You haven\'t provided the instance at field declaration so I tried to construct the instance."

    filled-new-array {p0, v3, v1, v2}, [Ljava/lang/Object;

    move-result-object p0

    .line 691
    invoke-static {p0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lorg/mockito/exceptions/misusing/InjectMocksException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static formatUnncessaryStubbingException(Ljava/lang/Class;Ljava/util/Collection;)Lorg/mockito/exceptions/misusing/UnnecessaryStubbingException;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Collection<",
            "Lorg/mockito/invocation/Invocation;",
            ">;)",
            "Lorg/mockito/exceptions/misusing/UnnecessaryStubbingException;"
        }
    .end annotation

    .line 868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 870
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mockito/invocation/Invocation;

    const-string v3, "\n  "

    .line 871
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ". "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Lorg/mockito/invocation/Invocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v1, v4

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 874
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Unnecessary stubbings detected in test class: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string p0, "Unnecessary stubbings detected."

    .line 877
    :goto_1
    new-instance p1, Lorg/mockito/exceptions/misusing/UnnecessaryStubbingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Following stubbings are unnecessary (click to navigate to relevant line of code):"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Please remove unnecessary stubbings or use \'lenient\' strictness. More info: javadoc for UnnecessaryStubbingException class."

    const-string v2, "Clean & maintainable test code requires zero unnecessary code."

    filled-new-array {p0, v2, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/mockito/exceptions/misusing/UnnecessaryStubbingException;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public static inOrderRequiresFamiliarMock()Lorg/mockito/exceptions/base/MockitoException;
    .locals 5

    .line 231
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v1, "    InOrder inOrder = inOrder(mockOne);"

    const-string v2, "    inOrder.verify(mockOne).doStuff();"

    const-string v3, "InOrder can only verify mocks that were passed in during creation of InOrder."

    const-string v4, "For example:"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static incorrectUseOfAdditionalMatchers(Ljava/lang/String;ILjava/util/Collection;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Collection<",
            "Lorg/mockito/internal/matchers/LocalizedMatcher;",
            ">;)",
            "Lorg/mockito/exceptions/base/MockitoException;"
        }
    .end annotation

    .line 259
    new-instance v0, Lorg/mockito/exceptions/misusing/InvalidUseOfMatchersException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid use of argument matchers inside additional matcher "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {v3}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    const-string v4, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v5, p1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " sub matchers expected, "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 263
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " recorded:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 264
    invoke-static/range {p2 .. p2}, Lorg/mockito/internal/exceptions/Reporter;->locationsOf(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, ""

    const-string v8, "This exception may occur if matchers are combined with raw values:"

    const-string v9, "    //incorrect:"

    const-string v10, "    someMethod(AdditionalMatchers.and(isNotNull(), \"raw String\");"

    const-string v11, "When using matchers, all arguments have to be provided by matchers."

    const-string v12, "For example:"

    const-string v13, "    //correct:"

    const-string v14, "    someMethod(AdditionalMatchers.and(isNotNull(), eq(\"raw String\"));"

    const-string v15, ""

    const-string v16, "For more info see javadoc for Matchers and AdditionalMatchers classes."

    const-string v17, ""

    filled-new-array/range {v2 .. v17}, [Ljava/lang/Object;

    move-result-object v1

    .line 259
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/InvalidUseOfMatchersException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static incorrectUseOfApi()Lorg/mockito/exceptions/base/MockitoException;
    .locals 9

    .line 92
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v1, "Incorrect use of API detected here:"

    new-instance v2, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {v2}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    const-string v3, ""

    const-string v4, "You probably stored a reference to OngoingStubbing returned by when() and called stubbing methods like thenReturn() on this reference more than once."

    const-string v5, "Examples of correct usage:"

    const-string v6, "    when(mock.isOk()).thenReturn(true).thenReturn(false).thenThrow(exception);"

    const-string v7, "    when(mock.isOk()).thenReturn(true, false).thenThrow(exception);"

    const-string v8, ""

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static invalidArgumentPositionRangeAtInvocationTime(Lorg/mockito/invocation/InvocationOnMock;ZI)Lorg/mockito/exceptions/base/MockitoException;
    .locals 5

    .line 756
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Invalid argument index for the current invocation of method : "

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 758
    invoke-interface {p0}, Lorg/mockito/invocation/InvocationOnMock;->getMock()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/mockito/internal/util/MockUtil;->getMockName(Ljava/lang/Object;)Lorg/mockito/mock/MockName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lorg/mockito/invocation/InvocationOnMock;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, ""

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "Last parameter wanted"

    goto :goto_0

    .line 762
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "Wanted parameter at position "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " but "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0}, Lorg/mockito/internal/exceptions/Reporter;->possibleArgumentTypesOf(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v1, p1

    const/4 p0, 0x4

    const-string p1, "The index need to be a positive number that indicates a valid position of the argument in the invocation."

    aput-object p1, v1, p0

    const/4 p0, 0x5

    const-string p1, "However it is possible to use the -1 value to indicates that the last argument should be returned."

    aput-object p1, v1, p0

    const/4 p0, 0x6

    aput-object v3, v1, p0

    .line 756
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static invalidArgumentRangeAtIdentityAnswerCreationTime()Lorg/mockito/exceptions/base/MockitoException;
    .locals 5

    .line 748
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v1, "However it is possible to use the -1 value to indicates that the last argument should be"

    const-string v2, "returned."

    const-string v3, "Invalid argument index."

    const-string v4, "The index need to be a positive number that indicates the position of the argument to return."

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static invalidUseOfMatchers(ILjava/util/List;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/mockito/internal/matchers/LocalizedMatcher;",
            ">;)",
            "Lorg/mockito/exceptions/base/MockitoException;"
        }
    .end annotation

    .line 240
    new-instance v0, Lorg/mockito/exceptions/misusing/InvalidUseOfMatchersException;

    const-string v1, "Invalid use of argument matchers!"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, " matchers expected, "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 242
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, " recorded:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 243
    invoke-static {p1}, Lorg/mockito/internal/exceptions/Reporter;->locationsOf(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, "This exception may occur if matchers are combined with raw values:"

    const-string v5, "    //incorrect:"

    const-string v6, "    someMethod(anyObject(), \"raw String\");"

    const-string v7, "When using matchers, all arguments have to be provided by matchers."

    const-string v8, "For example:"

    const-string v9, "    //correct:"

    const-string v10, "    someMethod(anyObject(), eq(\"String by matcher\"));"

    const-string v11, ""

    const-string v12, "For more info see javadoc for Matchers class."

    const-string v13, ""

    filled-new-array/range {v1 .. v13}, [Ljava/lang/Object;

    move-result-object p0

    .line 240
    invoke-static {p0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/misusing/InvalidUseOfMatchersException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static invocationListenerThrewException(Lorg/mockito/listeners/InvocationListener;Ljava/lang/Throwable;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 3

    .line 708
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The invocation listener with type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 709
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "threw an exception : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 710
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    .line 708
    invoke-static {p0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static locationsOf(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/mockito/internal/matchers/LocalizedMatcher;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 297
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/internal/matchers/LocalizedMatcher;

    .line 298
    invoke-virtual {v1}, Lorg/mockito/internal/matchers/LocalizedMatcher;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v1

    invoke-interface {v1}, Lorg/mockito/invocation/Location;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 299
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static methodDoesNotAcceptParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 2

    .line 700
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "() does not accept "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " See the Javadoc."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static misplacedArgumentMatcher(Ljava/util/List;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/internal/matchers/LocalizedMatcher;",
            ">;)",
            "Lorg/mockito/exceptions/base/MockitoException;"
        }
    .end annotation

    .line 541
    new-instance v0, Lorg/mockito/exceptions/misusing/InvalidUseOfMatchersException;

    const-string v1, "Misplaced or misused argument matcher detected here:"

    .line 543
    invoke-static/range {p0 .. p0}, Lorg/mockito/internal/exceptions/Reporter;->locationsOf(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    const-string v4, "You cannot use argument matchers outside of verification or stubbing."

    const-string v5, "Examples of correct usage of argument matchers:"

    const-string v6, "    when(mock.get(anyInt())).thenReturn(null);"

    const-string v7, "    doThrow(new RuntimeException()).when(mock).someVoidMethod(anyObject());"

    const-string v8, "    verify(mock).someMethod(contains(\"foo\"))"

    const-string v9, ""

    const-string v10, "This message may appear after an NullPointerException if the last matcher is returning an object "

    const-string v11, "like any() but the stubbed method signature expect a primitive argument, in this case,"

    const-string v12, "use primitive alternatives."

    const-string v13, "    when(mock.get(any())); // bad use, will raise NPE"

    const-string v14, "    when(mock.get(anyInt())); // correct usage use"

    const-string v15, ""

    const-string v16, "Also, this error might show up because you use argument matchers with methods that cannot be mocked."

    const-string v17, "Following methods *cannot* be stubbed/verified: final/private/equals()/hashCode()."

    const-string v18, "Mocking methods declared on non-public parent classes is not supported."

    const-string v19, ""

    filled-new-array/range {v1 .. v19}, [Ljava/lang/Object;

    move-result-object v1

    .line 541
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/InvalidUseOfMatchersException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static missingMethodInvocation()Lorg/mockito/exceptions/base/MockitoException;
    .locals 11

    .line 105
    new-instance v0, Lorg/mockito/exceptions/misusing/MissingMethodInvocationException;

    const-string v1, "when() requires an argument which has to be \'a method call on a mock\'."

    const-string v2, "For example:"

    const-string v3, "    when(mock.getArticles()).thenReturn(articles);"

    const-string v4, ""

    const-string v5, "Also, this error might show up because:"

    const-string v6, "1. you stub either of: final/private/equals()/hashCode() methods."

    const-string v7, "   Those methods *cannot* be stubbed/verified."

    const-string v8, "   Mocking methods declared on non-public parent classes is not supported."

    const-string v9, "2. inside when() you don\'t call method on mock but on some other object."

    const-string v10, ""

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/MissingMethodInvocationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static mockedTypeIsInconsistentWithDelegatedInstanceType(Ljava/lang/Class;Ljava/lang/Object;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/mockito/exceptions/base/MockitoException;"
        }
    .end annotation

    .line 731
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v1, "Mocked type must be the same as the type of your delegated instance."

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Mocked type must be: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 733
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", but is: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "  //correct delegate:"

    const-string v4, "  spy = mock( ->List.class<- , withSettings().delegatedInstance( ->new ArrayList()<- );"

    const-string v5, "  //incorrect - types don\'t match:"

    const-string v6, "  spy = mock( ->List.class<- , withSettings().delegatedInstance( ->new HashSet()<- );"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    .line 731
    invoke-static {p0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static mockedTypeIsInconsistentWithSpiedInstanceType(Ljava/lang/Class;Ljava/lang/Object;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/mockito/exceptions/base/MockitoException;"
        }
    .end annotation

    .line 618
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v1, "Mocked type must be the same as the type of your spied instance."

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Mocked type must be: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 620
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", but is: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "  //correct spying:"

    const-string v4, "  spy = mock( ->ArrayList.class<- , withSettings().spiedInstance( ->new ArrayList()<- );"

    const-string v5, "  //incorrect - types don\'t match:"

    const-string v6, "  spy = mock( ->List.class<- , withSettings().spiedInstance( ->new ArrayList()<- );"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    .line 618
    invoke-static {p0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static mocksHaveToBePassedToVerifyNoMoreInteractions()Lorg/mockito/exceptions/base/MockitoException;
    .locals 6

    .line 175
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v1, "    verifyZeroInteractions(mockOne, mockTwo);"

    const-string v2, ""

    const-string v3, "Method requires argument(s)!"

    const-string v4, "Pass mocks that should be verified, e.g:"

    const-string v5, "    verifyNoMoreInteractions(mockOne, mockTwo);"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static mocksHaveToBePassedWhenCreatingInOrder()Lorg/mockito/exceptions/base/MockitoException;
    .locals 5

    .line 222
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v1, "For example:"

    const-string v2, "    InOrder inOrder = inOrder(mockOne, mockTwo);"

    const-string v3, "Method requires argument(s)!"

    const-string v4, "Pass mocks that require verification in order."

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static moreThanOneAnnotationNotAllowed(Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 3

    .line 648
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "You cannot have more than one Mockito annotation on a field!\nThe field \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\' has multiple Mockito annotations.\nFor info how to use annotations see examples in javadoc for MockitoAnnotations class."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static neverWantedButInvoked(Lorg/mockito/invocation/DescribedInvocation;Ljava/util/List;)Lorg/mockito/exceptions/base/MockitoAssertionError;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/invocation/DescribedInvocation;",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Location;",
            ">;)",
            "Lorg/mockito/exceptions/base/MockitoAssertionError;"
        }
    .end annotation

    .line 395
    new-instance v0, Lorg/mockito/exceptions/verification/NeverWantedButInvoked;

    .line 396
    invoke-interface {p0}, Lorg/mockito/invocation/DescribedInvocation;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {v1}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    const-string v2, "But invoked here:"

    .line 400
    invoke-static {p1}, Lorg/mockito/internal/exceptions/Reporter;->createAllLocationsMessage(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "Never wanted here:"

    filled-new-array {p0, v3, v1, v2, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 395
    invoke-static {p0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/verification/NeverWantedButInvoked;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static noArgumentValueWasCaptured()Lorg/mockito/exceptions/base/MockitoException;
    .locals 11

    .line 576
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v1, "No argument value was captured!"

    const-string v2, "You might have forgotten to use argument.capture() in verify()..."

    const-string v3, "...or you used capture() in stubbing but stubbed method was not called."

    const-string v4, "Be aware that it is recommended to use capture() only with verify()"

    const-string v5, ""

    const-string v6, "Examples of correct argument capturing:"

    const-string v7, "    ArgumentCaptor<Person> argument = ArgumentCaptor.forClass(Person.class);"

    const-string v8, "    verify(mock).doSomething(argument.capture());"

    const-string v9, "    assertEquals(\"John\", argument.getValue().getName());"

    const-string v10, ""

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static noMoreInteractionsWanted(Lorg/mockito/invocation/Invocation;Ljava/util/List;)Lorg/mockito/exceptions/base/MockitoAssertionError;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/invocation/Invocation;",
            "Ljava/util/List<",
            "Lorg/mockito/internal/exceptions/VerificationAwareInvocation;",
            ">;)",
            "Lorg/mockito/exceptions/base/MockitoAssertionError;"
        }
    .end annotation

    .line 449
    new-instance v0, Lorg/mockito/internal/exceptions/util/ScenarioPrinter;

    invoke-direct {v0}, Lorg/mockito/internal/exceptions/util/ScenarioPrinter;-><init>()V

    .line 450
    invoke-virtual {v0, p1}, Lorg/mockito/internal/exceptions/util/ScenarioPrinter;->print(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 452
    new-instance v0, Lorg/mockito/exceptions/verification/NoInteractionsWanted;

    new-instance v1, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {v1}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "But found this interaction on mock \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 455
    invoke-interface {p0}, Lorg/mockito/invocation/Invocation;->getMock()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/mockito/internal/util/MockUtil;->getMockName(Ljava/lang/Object;)Lorg/mockito/mock/MockName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\':"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 456
    invoke-interface {p0}, Lorg/mockito/invocation/Invocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object p0

    const-string v3, "No interactions wanted here:"

    filled-new-array {v3, v1, v2, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 452
    invoke-static {p0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/verification/NoInteractionsWanted;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static noMoreInteractionsWantedInOrder(Lorg/mockito/invocation/Invocation;)Lorg/mockito/exceptions/base/MockitoAssertionError;
    .locals 4

    .line 462
    new-instance v0, Lorg/mockito/exceptions/verification/VerificationInOrderFailure;

    new-instance v1, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {v1}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "But found this interaction on mock \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 465
    invoke-interface {p0}, Lorg/mockito/invocation/Invocation;->getMock()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/mockito/internal/util/MockUtil;->getMockName(Ljava/lang/Object;)Lorg/mockito/mock/MockName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\':"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 466
    invoke-interface {p0}, Lorg/mockito/invocation/Invocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object p0

    const-string v3, "No interactions wanted here:"

    filled-new-array {v3, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 462
    invoke-static {p0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/verification/VerificationInOrderFailure;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static notAMockPassedToVerify(Ljava/lang/Class;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/mockito/exceptions/base/MockitoException;"
        }
    .end annotation

    .line 135
    new-instance v0, Lorg/mockito/exceptions/misusing/NotAMockException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Argument passed to verify() is of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " and is not a mock!"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Make sure you place the parenthesis correctly!"

    const-string v3, "See the examples of correct verifications:"

    const-string v4, "    verify(mock).someMethod();"

    const-string v5, "    verify(mock, times(10)).someMethod();"

    const-string v6, "    verify(mock, atLeastOnce()).someMethod();"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    .line 135
    invoke-static {p0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/misusing/NotAMockException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static notAMockPassedToVerifyNoMoreInteractions()Lorg/mockito/exceptions/base/MockitoException;
    .locals 6

    .line 185
    new-instance v0, Lorg/mockito/exceptions/misusing/NotAMockException;

    const-string v1, "    verifyZeroInteractions(mockOne, mockTwo);"

    const-string v2, ""

    const-string v3, "Argument(s) passed is not a mock!"

    const-string v4, "Examples of correct verifications:"

    const-string v5, "    verifyNoMoreInteractions(mockOne, mockTwo);"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/NotAMockException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static notAMockPassedToWhenMethod()Lorg/mockito/exceptions/base/MockitoException;
    .locals 4

    .line 158
    new-instance v0, Lorg/mockito/exceptions/misusing/NotAMockException;

    const-string v1, "Example of correct stubbing:"

    const-string v2, "    doThrow(new RuntimeException()).when(mock).someMethod();"

    const-string v3, "Argument passed to when() is not a mock!"

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/NotAMockException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static notAMockPassedWhenCreatingInOrder()Lorg/mockito/exceptions/base/MockitoException;
    .locals 5

    .line 204
    new-instance v0, Lorg/mockito/exceptions/misusing/NotAMockException;

    const-string v1, "For example:"

    const-string v2, "    InOrder inOrder = inOrder(mockOne, mockTwo);"

    const-string v3, "Argument(s) passed is not a mock!"

    const-string v4, "Pass mocks that require verification in order."

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/NotAMockException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static notAnException()Lorg/mockito/exceptions/base/MockitoException;
    .locals 3

    .line 862
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v1, "Exception type cannot be null."

    const-string v2, "This may happen with doThrow(Class)|thenThrow(Class) family of methods if passing null parameter."

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static nullPassedToVerify()Lorg/mockito/exceptions/base/MockitoException;
    .locals 8

    .line 146
    new-instance v0, Lorg/mockito/exceptions/misusing/NullInsteadOfMockException;

    const-string v1, "Argument passed to verify() should be a mock but is null!"

    const-string v2, "Examples of correct verifications:"

    const-string v3, "    verify(mock).someMethod();"

    const-string v4, "    verify(mock, times(10)).someMethod();"

    const-string v5, "    verify(mock, atLeastOnce()).someMethod();"

    const-string v6, "    not: verify(mock.someMethod());"

    const-string v7, "Also, if you use @Mock annotation don\'t miss initMocks()"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/NullInsteadOfMockException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static nullPassedToVerifyNoMoreInteractions()Lorg/mockito/exceptions/base/MockitoException;
    .locals 5

    .line 195
    new-instance v0, Lorg/mockito/exceptions/misusing/NullInsteadOfMockException;

    const-string v1, "    verifyNoMoreInteractions(mockOne, mockTwo);"

    const-string v2, "    verifyZeroInteractions(mockOne, mockTwo);"

    const-string v3, "Argument(s) passed is null!"

    const-string v4, "Examples of correct verifications:"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/NullInsteadOfMockException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static nullPassedToWhenMethod()Lorg/mockito/exceptions/base/MockitoException;
    .locals 5

    .line 166
    new-instance v0, Lorg/mockito/exceptions/misusing/NullInsteadOfMockException;

    const-string v1, "    doThrow(new RuntimeException()).when(mock).someMethod();"

    const-string v2, "Also, if you use @Mock annotation don\'t miss initMocks()"

    const-string v3, "Argument passed to when() is null!"

    const-string v4, "Example of correct stubbing:"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/NullInsteadOfMockException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static nullPassedWhenCreatingInOrder()Lorg/mockito/exceptions/base/MockitoException;
    .locals 5

    .line 213
    new-instance v0, Lorg/mockito/exceptions/misusing/NullInsteadOfMockException;

    const-string v1, "For example:"

    const-string v2, "    InOrder inOrder = inOrder(mockOne, mockTwo);"

    const-string v3, "Argument(s) passed is null!"

    const-string v4, "Pass mocks that require verification in order."

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/NullInsteadOfMockException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static onlyVoidMethodsCanBeSetToDoNothing()Lorg/mockito/exceptions/base/MockitoException;
    .locals 8

    .line 499
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v1, "Only void methods can doNothing()!"

    const-string v2, "Example of correct use of doNothing():"

    const-string v3, "    doNothing()."

    const-string v4, "    doThrow(new RuntimeException())"

    const-string v5, "    .when(mock).someVoidMethod();"

    const-string v6, "Above means:"

    const-string v7, "someVoidMethod() does nothing the 1st time but throws an exception the 2nd time is called"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static possibleArgumentTypesOf(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/StringBuilder;
    .locals 6

    .line 770
    invoke-interface {p0}, Lorg/mockito/invocation/InvocationOnMock;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 771
    array-length v1, v0

    if-nez v1, :cond_0

    .line 772
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "the method has no arguments.\n"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 775
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "the possible argument indexes for this method are :\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 776
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    const-string v4, "    ["

    .line 777
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 779
    invoke-interface {p0}, Lorg/mockito/invocation/InvocationOnMock;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v4, v2, -0x1

    if-ne v3, v4, :cond_1

    const-string v4, "+] "

    .line 780
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  <- Vararg\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v4, "] "

    .line 782
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static potentialStubbingProblem(Lorg/mockito/invocation/Invocation;Ljava/util/Collection;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/invocation/Invocation;",
            "Ljava/util/Collection<",
            "Lorg/mockito/invocation/Invocation;",
            ">;)V"
        }
    .end annotation

    .line 891
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 893
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "    "

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mockito/invocation/Invocation;

    .line 894
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ". "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n      "

    .line 895
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Lorg/mockito/invocation/Invocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v4

    goto :goto_0

    .line 897
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 899
    new-instance p1, Lorg/mockito/exceptions/misusing/PotentialStubbingProblem;

    const-string v0, "Strict stubbing argument mismatch. Please check:"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " - this invocation of \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 901
    invoke-interface {p0}, Lorg/mockito/invocation/Invocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' method:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 903
    invoke-interface {p0}, Lorg/mockito/invocation/Invocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, " - has following stubbing(s) with different arguments:"

    const-string v6, "Typically, stubbing argument mismatch indicates user mistake when writing tests."

    const-string v7, "Mockito fails early so that you can debug potential problem easily."

    const-string v8, "However, there are legit scenarios when this exception generates false negative signal:"

    const-string v9, "  - stubbing the same method multiple times using \'given().will()\' or \'when().then()\' API"

    const-string v10, "    Please use \'will().given()\' or \'doReturn().when()\' API for stubbing."

    const-string v11, "  - stubbed method is intentionally invoked with different arguments by code under test"

    const-string v12, "    Please use default or \'silent\' JUnit Rule (equivalent of Strictness.LENIENT)."

    const-string v13, "For more information see javadoc for PotentialStubbingProblem class."

    filled-new-array/range {v0 .. v13}, [Ljava/lang/Object;

    move-result-object p0

    .line 899
    invoke-static {p0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/mockito/exceptions/misusing/PotentialStubbingProblem;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static redundantMockitoListener(Ljava/lang/String;)V
    .locals 7

    .line 917
    new-instance v0, Lorg/mockito/exceptions/misusing/RedundantListenerException;

    const-string v1, "Problems adding Mockito listener."

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Listener of type \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "\' has already been added and not removed."

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "It indicates that previous listener was not removed according to the API."

    const-string v4, "When you add a listener, don\'t forget to remove the listener afterwards:"

    const-string v5, "  Mockito.framework().removeListener(myListener);"

    const-string v6, "For more information, see the javadoc for RedundantListenerException class."

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/misusing/RedundantListenerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static reportNoSubMatchersFound(Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 3

    .line 287
    new-instance v0, Lorg/mockito/exceptions/misusing/InvalidUseOfMatchersException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No matchers found for additional matcher "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {v1}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    const-string v2, ""

    filled-new-array {p0, v1, v2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/misusing/InvalidUseOfMatchersException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static requiresAtLeastOneListener(Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 2

    .line 704
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "() requires at least one listener"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static serializableWontWorkForObjectsThatDontImplementSerializable(Ljava/lang/Class;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/mockito/exceptions/base/MockitoException;"
        }
    .end annotation

    .line 815
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "You are using the setting \'withSettings().serializable()\' however the type you are trying to mock \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 816
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "do not implement Serializable AND do not have a no-arg constructor."

    const-string v3, "This combination is requested, otherwise you will get an \'java.io.InvalidClassException\' when the mock will be serialized"

    const-string v4, ""

    const-string v5, "Also note that as requested by the Java serialization specification, the whole hierarchy need to implements Serializable,"

    const-string v6, "i.e. the top-most superclass has to implements Serializable."

    const-string v7, ""

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    .line 815
    invoke-static {p0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static smartNullPointerException(Ljava/lang/String;Lorg/mockito/invocation/Location;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 7

    .line 565
    new-instance v0, Lorg/mockito/exceptions/verification/SmartNullPointerException;

    const-string v1, "You have a NullPointerException here:"

    new-instance v2, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {v2}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    const-string v3, "because this method call was *not* stubbed correctly:"

    const-string v6, ""

    move-object v4, p1

    move-object v5, p0

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/verification/SmartNullPointerException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static spyAndDelegateAreMutuallyExclusive()Lorg/mockito/exceptions/base/MockitoException;
    .locals 2

    .line 742
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v1, "Settings should not define a spy instance and a delegated instance at the same time."

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static stubPassedToVerify(Ljava/lang/Object;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 3

    .line 280
    new-instance v0, Lorg/mockito/exceptions/misusing/CannotVerifyStubOnlyMock;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Argument \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    invoke-static {p0}, Lorg/mockito/internal/util/MockUtil;->getMockName(Ljava/lang/Object;)Lorg/mockito/mock/MockName;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\" passed to verify is a stubOnly() mock which cannot be verified."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "If you intend to verify invocations on this mock, don\'t use stubOnly() in its MockSettings."

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    .line 280
    invoke-static {p0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/misusing/CannotVerifyStubOnlyMock;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static tooFewActualInvocations(Lorg/mockito/internal/reporting/Discrepancy;Lorg/mockito/invocation/DescribedInvocation;Ljava/util/List;)Lorg/mockito/exceptions/base/MockitoAssertionError;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/internal/reporting/Discrepancy;",
            "Lorg/mockito/invocation/DescribedInvocation;",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Location;",
            ">;)",
            "Lorg/mockito/exceptions/base/MockitoAssertionError;"
        }
    .end annotation

    .line 435
    invoke-static {p0, p1, p2}, Lorg/mockito/internal/exceptions/Reporter;->createTooFewInvocationsMessage(Lorg/mockito/internal/reporting/Discrepancy;Lorg/mockito/invocation/DescribedInvocation;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    .line 437
    new-instance p1, Lorg/mockito/exceptions/verification/TooFewActualInvocations;

    invoke-direct {p1, p0}, Lorg/mockito/exceptions/verification/TooFewActualInvocations;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public static tooFewActualInvocationsInOrder(Lorg/mockito/internal/reporting/Discrepancy;Lorg/mockito/invocation/DescribedInvocation;Ljava/util/List;)Lorg/mockito/exceptions/base/MockitoAssertionError;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/internal/reporting/Discrepancy;",
            "Lorg/mockito/invocation/DescribedInvocation;",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Location;",
            ">;)",
            "Lorg/mockito/exceptions/base/MockitoAssertionError;"
        }
    .end annotation

    .line 441
    invoke-static {p0, p1, p2}, Lorg/mockito/internal/exceptions/Reporter;->createTooFewInvocationsMessage(Lorg/mockito/internal/reporting/Discrepancy;Lorg/mockito/invocation/DescribedInvocation;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    .line 443
    new-instance p1, Lorg/mockito/exceptions/verification/VerificationInOrderFailure;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Verification in order failure:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/mockito/exceptions/verification/VerificationInOrderFailure;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public static tooManyActualInvocations(IILorg/mockito/invocation/DescribedInvocation;Ljava/util/List;)Lorg/mockito/exceptions/base/MockitoAssertionError;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/mockito/invocation/DescribedInvocation;",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Location;",
            ">;)",
            "Lorg/mockito/exceptions/base/MockitoAssertionError;"
        }
    .end annotation

    .line 378
    invoke-static {p0, p1, p2, p3}, Lorg/mockito/internal/exceptions/Reporter;->createTooManyInvocationsMessage(IILorg/mockito/invocation/DescribedInvocation;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    .line 379
    new-instance p1, Lorg/mockito/exceptions/verification/TooManyActualInvocations;

    invoke-direct {p1, p0}, Lorg/mockito/exceptions/verification/TooManyActualInvocations;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public static tooManyActualInvocationsInOrder(IILorg/mockito/invocation/DescribedInvocation;Ljava/util/List;)Lorg/mockito/exceptions/base/MockitoAssertionError;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/mockito/invocation/DescribedInvocation;",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Location;",
            ">;)",
            "Lorg/mockito/exceptions/base/MockitoAssertionError;"
        }
    .end annotation

    .line 405
    invoke-static {p0, p1, p2, p3}, Lorg/mockito/internal/exceptions/Reporter;->createTooManyInvocationsMessage(IILorg/mockito/invocation/DescribedInvocation;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    .line 406
    new-instance p1, Lorg/mockito/exceptions/verification/VerificationInOrderFailure;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Verification in order failure:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/mockito/exceptions/verification/VerificationInOrderFailure;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public static unfinishedMockingSession()V
    .locals 4

    .line 927
    new-instance v0, Lorg/mockito/exceptions/misusing/UnfinishedMockingSessionException;

    const-string v1, "Previous MockitoSession was not concluded with \'finishMocking()\'."

    const-string v2, "For examples of correct usage see javadoc for MockitoSession class."

    const-string v3, "Unfinished mocking session detected."

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/UnfinishedMockingSessionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static unfinishedStubbing(Lorg/mockito/invocation/Location;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 14

    .line 74
    new-instance v0, Lorg/mockito/exceptions/misusing/UnfinishedStubbingException;

    const-string v1, "Unfinished stubbing detected here:"

    const-string v3, ""

    const-string v4, "E.g. thenReturn() may be missing."

    const-string v5, "Examples of correct stubbing:"

    const-string v6, "    when(mock.isOk()).thenReturn(true);"

    const-string v7, "    when(mock.isOk()).thenThrow(exception);"

    const-string v8, "    doThrow(exception).when(mock).someVoidMethod();"

    const-string v9, "Hints:"

    const-string v10, " 1. missing thenReturn()"

    const-string v11, " 2. you are trying to stub a final method, which is not supported"

    const-string v12, " 3: you are stubbing the behaviour of another mock inside before \'thenReturn\' instruction is completed"

    const-string v13, ""

    move-object v2, p0

    filled-new-array/range {v1 .. v13}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/misusing/UnfinishedStubbingException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static unfinishedVerificationException(Lorg/mockito/invocation/Location;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 11

    .line 120
    new-instance v0, Lorg/mockito/exceptions/misusing/UnfinishedVerificationException;

    const-string v1, "Missing method call for verify(mock) here:"

    const-string v3, ""

    const-string v4, "Example of correct verification:"

    const-string v5, "    verify(mock).doSomething()"

    const-string v6, ""

    const-string v7, "Also, this error might show up because you verify either of: final/private/equals()/hashCode() methods."

    const-string v8, "Those methods *cannot* be stubbed/verified."

    const-string v9, "Mocking methods declared on non-public parent classes is not supported."

    const-string v10, ""

    move-object v2, p0

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/misusing/UnfinishedVerificationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static unncessaryStubbingException(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 886
    invoke-static {v0, p0}, Lorg/mockito/internal/exceptions/Reporter;->formatUnncessaryStubbingException(Ljava/lang/Class;Ljava/util/Collection;)Lorg/mockito/exceptions/misusing/UnnecessaryStubbingException;

    move-result-object p0

    throw p0
.end method

.method public static unsupportedCombinationOfAnnotations(Ljava/lang/String;Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 3

    .line 654
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This combination of annotations is not permitted on a single field:\n@"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " and @"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static usingConstructorWithFancySerializable(Lorg/mockito/mock/SerializableMode;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 3

    .line 847
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Mocks instantiated with constructor cannot be combined with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " serialization mode."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static wantedAtMostX(II)Lorg/mockito/exceptions/verification/MoreThanAllowedActualInvocations;
    .locals 3

    .line 537
    new-instance v0, Lorg/mockito/exceptions/verification/MoreThanAllowedActualInvocations;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wanted at most "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lorg/mockito/internal/reporting/Pluralizer;->pluralize(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " but was "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/verification/MoreThanAllowedActualInvocations;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static wantedButNotInvoked(Lorg/mockito/invocation/DescribedInvocation;)Lorg/mockito/exceptions/base/MockitoAssertionError;
    .locals 1

    .line 332
    new-instance v0, Lorg/mockito/exceptions/verification/WantedButNotInvoked;

    invoke-static {p0}, Lorg/mockito/internal/exceptions/Reporter;->createWantedButNotInvokedMessage(Lorg/mockito/invocation/DescribedInvocation;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/verification/WantedButNotInvoked;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static wantedButNotInvoked(Lorg/mockito/invocation/DescribedInvocation;Ljava/util/List;)Lorg/mockito/exceptions/base/MockitoAssertionError;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/invocation/DescribedInvocation;",
            "Ljava/util/List<",
            "+",
            "Lorg/mockito/invocation/DescribedInvocation;",
            ">;)",
            "Lorg/mockito/exceptions/base/MockitoAssertionError;"
        }
    .end annotation

    .line 337
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Actually, there were zero interactions with this mock.\n"

    goto :goto_1

    .line 340
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nHowever, there "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 341
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Lorg/mockito/internal/reporting/Pluralizer;->were_exactly_x_interactions(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with this mock:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 342
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/invocation/DescribedInvocation;

    .line 343
    invoke-interface {v1}, Lorg/mockito/invocation/DescribedInvocation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    .line 344
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 345
    invoke-interface {v1}, Lorg/mockito/invocation/DescribedInvocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    .line 346
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 348
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 351
    :goto_1
    invoke-static {p0}, Lorg/mockito/internal/exceptions/Reporter;->createWantedButNotInvokedMessage(Lorg/mockito/invocation/DescribedInvocation;)Ljava/lang/String;

    move-result-object p0

    .line 352
    new-instance v0, Lorg/mockito/exceptions/verification/WantedButNotInvoked;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/verification/WantedButNotInvoked;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static wantedButNotInvokedInOrder(Lorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/DescribedInvocation;)Lorg/mockito/exceptions/base/MockitoAssertionError;
    .locals 9

    .line 365
    new-instance v0, Lorg/mockito/exceptions/verification/VerificationInOrderFailure;

    const-string v1, "Verification in order failure"

    const-string v2, "Wanted but not invoked:"

    .line 368
    invoke-interface {p0}, Lorg/mockito/invocation/DescribedInvocation;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {v4}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    const-string v5, "Wanted anywhere AFTER following interaction:"

    .line 371
    invoke-interface {p1}, Lorg/mockito/invocation/DescribedInvocation;->toString()Ljava/lang/String;

    move-result-object v6

    .line 372
    invoke-interface {p1}, Lorg/mockito/invocation/DescribedInvocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v7

    const-string v8, ""

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    .line 365
    invoke-static {p0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/verification/VerificationInOrderFailure;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static wrongTypeOfArgumentToReturn(Lorg/mockito/invocation/InvocationOnMock;Ljava/lang/String;Ljava/lang/Class;I)Lorg/mockito/exceptions/base/MockitoException;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/invocation/InvocationOnMock;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;I)",
            "Lorg/mockito/exceptions/base/MockitoException;"
        }
    .end annotation

    .line 789
    new-instance v0, Lorg/mockito/exceptions/misusing/WrongTypeOfReturnValue;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The argument of type \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 790
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' cannot be returned because the following "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "method should return the type \'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 792
    invoke-interface/range {p0 .. p0}, Lorg/mockito/invocation/InvocationOnMock;->getMock()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/mockito/internal/util/MockUtil;->getMockName(Ljava/lang/Object;)Lorg/mockito/mock/MockName;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface/range {p0 .. p0}, Lorg/mockito/invocation/InvocationOnMock;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "()"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-string v6, "The reason for this error can be :"

    const-string v7, "1. The wanted argument position is incorrect."

    const-string v8, "2. The answer is used on the wrong interaction."

    const-string v9, ""

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v10, "Position of the wanted argument is "

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v10, p3

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, " and "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 798
    invoke-static/range {p0 .. p0}, Lorg/mockito/internal/exceptions/Reporter;->possibleArgumentTypesOf(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "***"

    const-string v12, "However if you\'re still unsure why you\'re getting above error read on."

    const-string v13, "Due to the nature of the syntax above problem might occur because:"

    const-string v14, "1. This exception *might* occur in wrongly written multi-threaded tests."

    const-string v15, "   Please refer to Mockito FAQ on limitations of concurrency testing."

    const-string v16, "2. A spy is stubbed using when(spy.foo()).then() syntax. It is safer to stub spies - "

    const-string v17, "   - with doReturn|Throw() family of methods. More in javadocs for Mockito.spy() method."

    const-string v18, ""

    filled-new-array/range {v2 .. v18}, [Ljava/lang/Object;

    move-result-object v1

    .line 789
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/WrongTypeOfReturnValue;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static wrongTypeOfReturnValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 11

    .line 511
    new-instance v0, Lorg/mockito/exceptions/misusing/WrongTypeOfReturnValue;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " cannot be returned by "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "()"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "() should return "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "***"

    const-string v4, "If you\'re unsure why you\'re getting above error read on."

    const-string v5, "Due to the nature of the syntax above problem might occur because:"

    const-string v6, "1. This exception *might* occur in wrongly written multi-threaded tests."

    const-string v7, "   Please refer to Mockito FAQ on limitations of concurrency testing."

    const-string v8, "2. A spy is stubbed using when(spy.foo()).then() syntax. It is safer to stub spies - "

    const-string v9, "   - with doReturn|Throw() family of methods. More in javadocs for Mockito.spy() method."

    const-string v10, ""

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/misusing/WrongTypeOfReturnValue;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static wrongTypeReturnedByDefaultAnswer(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;
    .locals 7

    .line 526
    new-instance v0, Lorg/mockito/exceptions/misusing/WrongTypeOfReturnValue;

    const-string v1, "Default answer returned a result with the wrong type:"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, " cannot be returned by "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "()"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "() should return "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The default answer of "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 531
    invoke-static {p0}, Lorg/mockito/internal/util/MockUtil;->getMockName(Ljava/lang/Object;)Lorg/mockito/mock/MockName;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " that was configured on the mock is probably incorrectly implemented."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    .line 526
    invoke-static {p0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/exceptions/misusing/WrongTypeOfReturnValue;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
