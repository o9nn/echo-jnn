.class public Lcom/imagepicker/ImagePickerModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "ImagePickerModule.java"


# instance fields
.field final imagePickerModuleImpl:Lcom/imagepicker/ImagePickerModuleImpl;


# direct methods
.method constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 20
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 21
    new-instance v0, Lcom/imagepicker/ImagePickerModuleImpl;

    invoke-direct {v0, p1}, Lcom/imagepicker/ImagePickerModuleImpl;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object v0, p0, Lcom/imagepicker/ImagePickerModule;->imagePickerModuleImpl:Lcom/imagepicker/ImagePickerModuleImpl;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "ImagePicker"

    return-object v0
.end method

.method public launchCamera(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    iget-object v0, p0, Lcom/imagepicker/ImagePickerModule;->imagePickerModuleImpl:Lcom/imagepicker/ImagePickerModuleImpl;

    .line 31
    invoke-virtual {v0, p1, p2}, Lcom/imagepicker/ImagePickerModuleImpl;->launchCamera(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public launchImageLibrary(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    iget-object v0, p0, Lcom/imagepicker/ImagePickerModule;->imagePickerModuleImpl:Lcom/imagepicker/ImagePickerModuleImpl;

    .line 36
    invoke-virtual {v0, p1, p2}, Lcom/imagepicker/ImagePickerModuleImpl;->launchImageLibrary(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method
