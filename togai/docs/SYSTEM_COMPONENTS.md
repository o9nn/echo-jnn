# System Components Overview

This document provides detailed documentation of the 9mly application's system components and their interactions.

## Core System Components

### Application Layer Components

```mermaid
graph TD
    subgraph "Application Framework"
        APP_CONTEXT[Application Context]
        LIFECYCLE[Lifecycle Management]
        NAVIGATION[Navigation Controller]
        STATE[State Management]
    end
    
    subgraph "UI Components"
        ACTIVITIES[Activities]
        FRAGMENTS[Fragments]
        VIEWS[Custom Views]
        LAYOUTS[Layout Management]
    end
    
    subgraph "Background Services"
        FOREGROUND[Foreground Services]
        BACKGROUND[Background Services]
        WORKERS[Work Manager]
        JOBS[Job Scheduler]
    end
    
    APP_CONTEXT --> LIFECYCLE
    LIFECYCLE --> NAVIGATION
    NAVIGATION --> STATE
    
    STATE --> ACTIVITIES
    ACTIVITIES --> FRAGMENTS
    FRAGMENTS --> VIEWS
    VIEWS --> LAYOUTS
    
    APP_CONTEXT --> FOREGROUND
    FOREGROUND --> BACKGROUND
    BACKGROUND --> WORKERS
    WORKERS --> JOBS
```

### Service Layer Architecture

```mermaid
graph LR
    subgraph "Core Services"
        CONFIG[Configuration Service]
        LOG[Logging Service]
        CACHE[Cache Service]
        PERSIST[Persistence Service]
    end
    
    subgraph "Business Services"
        PDF_SVC[PDF Service]
        AUTH_SVC[Authentication Service]
        BILLING_SVC[Billing Service]
        LOCATION_SVC[Location Service]
    end
    
    subgraph "Integration Services"
        HTTP[HTTP Client Service]
        FIREBASE_SVC[Firebase Service]
        ANALYTICS_SVC[Analytics Service]
        CRASH_SVC[Crash Reporting Service]
    end
    
    CONFIG --> LOG
    LOG --> CACHE
    CACHE --> PERSIST
    
    PDF_SVC --> CONFIG
    AUTH_SVC --> CONFIG
    BILLING_SVC --> CONFIG
    LOCATION_SVC --> CONFIG
    
    HTTP --> FIREBASE_SVC
    FIREBASE_SVC --> ANALYTICS_SVC
    ANALYTICS_SVC --> CRASH_SVC
```

## Component Responsibilities

### PDF Processing Components

| Component | Responsibility | Dependencies |
|-----------|---------------|--------------|
| **PDF Reader** | Parse and load PDF documents | Apache PDFBox, FontBox |
| **PDF Renderer** | Render PDF pages for display | Graphics engine, Font manager |
| **PDF Annotator** | Handle annotations and markups | PDF Parser, User input |
| **PDF Exporter** | Export modified PDFs | File system, Permissions |
| **Font Manager** | Manage fonts and glyph mappings | Glyph lists, Font resources |

### Authentication Components

```mermaid
sequenceDiagram
    participant UI as UI Component
    participant AUTH as Auth Manager
    participant FIREBASE as Firebase Auth
    participant TOKEN as Token Manager
    participant SECURE as Secure Storage
    
    UI->>AUTH: Initiate Login
    AUTH->>FIREBASE: Authenticate User
    FIREBASE-->>AUTH: Auth Result
    AUTH->>TOKEN: Generate Session Token
    TOKEN->>SECURE: Store Token Securely
    SECURE-->>TOKEN: Confirmation
    TOKEN-->>AUTH: Token Ready
    AUTH-->>UI: Authentication Complete
```

### Billing System Components

```mermaid
graph TD
    subgraph "Billing Management"
        BILLING_MGR[Billing Manager]
        PRODUCT_MGR[Product Manager]
        PURCHASE_MGR[Purchase Manager]
        RECEIPT_MGR[Receipt Manager]
    end
    
    subgraph "Google Play Integration"
        PLAY_BILLING[Play Billing Client]
        SKU_DETAILS[SKU Details]
        PURCHASE_FLOW[Purchase Flow]
        VERIFICATION[Receipt Verification]
    end
    
    subgraph "Local Storage"
        PURCHASE_DB[Purchase Database]
        RECEIPT_CACHE[Receipt Cache]
        USER_PREFS[User Preferences]
    end
    
    BILLING_MGR --> PRODUCT_MGR
    PRODUCT_MGR --> PURCHASE_MGR
    PURCHASE_MGR --> RECEIPT_MGR
    
    BILLING_MGR --> PLAY_BILLING
    PLAY_BILLING --> SKU_DETAILS
    SKU_DETAILS --> PURCHASE_FLOW
    PURCHASE_FLOW --> VERIFICATION
    
    RECEIPT_MGR --> PURCHASE_DB
    PURCHASE_DB --> RECEIPT_CACHE
    RECEIPT_CACHE --> USER_PREFS
```

### Location Services Components

```mermaid
graph TB
    subgraph "Location Services"
        LOC_MGR[Location Manager]
        GPS_PROVIDER[GPS Provider]
        NETWORK_PROVIDER[Network Provider]
        GEOCODER[Geocoding Service]
    end
    
    subgraph "Google Play Services"
        FUSED_PROVIDER[Fused Location Provider]
        GEOFENCING[Geofencing Service]
        PLACES_API[Places API]
        MAPS_API[Maps API]
    end
    
    subgraph "Permissions & Privacy"
        PERMISSION_MGR[Permission Manager]
        PRIVACY_MGR[Privacy Manager]
        CONSENT_MGR[Consent Manager]
    end
    
    LOC_MGR --> GPS_PROVIDER
    LOC_MGR --> NETWORK_PROVIDER
    LOC_MGR --> GEOCODER
    
    LOC_MGR --> FUSED_PROVIDER
    FUSED_PROVIDER --> GEOFENCING
    GEOFENCING --> PLACES_API
    PLACES_API --> MAPS_API
    
    LOC_MGR --> PERMISSION_MGR
    PERMISSION_MGR --> PRIVACY_MGR
    PRIVACY_MGR --> CONSENT_MGR
```

## Data Flow Between Components

### Inter-Component Communication

```mermaid
sequenceDiagram
    participant UI as UI Layer
    participant VM as ViewModel
    participant REPO as Repository
    participant SERVICE as Service Layer
    participant DB as Database
    participant API as External API
    
    UI->>VM: User Action
    VM->>REPO: Request Data
    
    alt Data in Cache
        REPO->>DB: Query Local Data
        DB-->>REPO: Return Cached Data
    else Data Not Available
        REPO->>SERVICE: Fetch from API
        SERVICE->>API: API Request
        API-->>SERVICE: API Response
        SERVICE->>DB: Cache Data
        SERVICE-->>REPO: Return Data
    end
    
    REPO-->>VM: Data Result
    VM-->>UI: Update UI State
```

### Component Lifecycle Management

```mermaid
stateDiagram-v2
    [*] --> Created
    Created --> Initialized: initialize()
    Initialized --> Active: start()
    Active --> Paused: pause()
    Paused --> Active: resume()
    Active --> Stopped: stop()
    Paused --> Stopped: stop()
    Stopped --> Destroyed: destroy()
    Destroyed --> [*]
    
    Active --> Error: exception
    Error --> Active: recover()
    Error --> Stopped: fail()
```

## Component Configuration

### Service Configuration Matrix

| Service | Configuration File | Key Settings | Dependencies |
|---------|-------------------|--------------|--------------|
| **Firebase** | firebase-encoders.properties | Version 17.0.0 | Google Play Services |
| **Billing** | billing.properties | Version 6.1.0 | Play Billing Library |
| **PDF** | N/A (Embedded) | Apache PDFBox | FontBox, Glyph Lists |
| **Location** | play-services-location.properties | Latest | Fused Location Provider |
| **Analytics** | firebase-analytics.properties | Latest | Firebase Core |

### Component Dependencies Graph

```mermaid
graph TD
    subgraph "Application Layer"
        UI_COMP[UI Components]
        VIEW_MODELS[ViewModels]
        FRAGMENTS[Fragments]
    end
    
    subgraph "Business Layer"
        USE_CASES[Use Cases]
        REPOSITORIES[Repositories]
        SERVICES[Services]
    end
    
    subgraph "Data Layer"
        LOCAL_DB[Local Database]
        REMOTE_API[Remote APIs]
        CACHE[Cache Layer]
    end
    
    subgraph "External Libraries"
        FIREBASE_LIB[Firebase SDK]
        BILLING_LIB[Play Billing]
        PDF_LIB[PDFBox]
        KOTLIN_LIB[Kotlin Std]
    end
    
    UI_COMP --> VIEW_MODELS
    VIEW_MODELS --> FRAGMENTS
    
    UI_COMP --> USE_CASES
    USE_CASES --> REPOSITORIES
    REPOSITORIES --> SERVICES
    
    SERVICES --> LOCAL_DB
    SERVICES --> REMOTE_API
    SERVICES --> CACHE
    
    SERVICES --> FIREBASE_LIB
    SERVICES --> BILLING_LIB
    SERVICES --> PDF_LIB
    
    VIEW_MODELS --> KOTLIN_LIB
    USE_CASES --> KOTLIN_LIB
    REPOSITORIES --> KOTLIN_LIB
```

## Error Handling and Recovery

### Component Error Handling Strategy

```mermaid
graph TB
    subgraph "Error Detection"
        TRY_CATCH[Try-Catch Blocks]
        EXCEPTION_HANDLER[Exception Handlers]
        ERROR_LISTENERS[Error Listeners]
    end
    
    subgraph "Error Processing"
        ERROR_LOGGER[Error Logger]
        ERROR_CLASSIFIER[Error Classifier]
        RECOVERY_MANAGER[Recovery Manager]
    end
    
    subgraph "Error Response"
        USER_NOTIFICATION[User Notification]
        FALLBACK_ACTION[Fallback Actions]
        CRASH_REPORT[Crash Reporting]
    end
    
    TRY_CATCH --> ERROR_LOGGER
    EXCEPTION_HANDLER --> ERROR_CLASSIFIER
    ERROR_LISTENERS --> RECOVERY_MANAGER
    
    ERROR_LOGGER --> USER_NOTIFICATION
    ERROR_CLASSIFIER --> FALLBACK_ACTION
    RECOVERY_MANAGER --> CRASH_REPORT
```

### Recovery Mechanisms

| Component | Error Type | Recovery Strategy | Fallback |
|-----------|------------|------------------|----------|
| **PDF Service** | Parse Error | Retry with different parser | Show error message |
| **Authentication** | Network Error | Retry with exponential backoff | Offline mode |
| **Billing** | Payment Error | Retry payment flow | Store pending purchase |
| **Location** | Permission Denied | Request permission | Use last known location |
| **Firebase** | Connection Error | Queue operations | Local storage |

---

*This document details the system components and their interactions within the 9mly application architecture.*