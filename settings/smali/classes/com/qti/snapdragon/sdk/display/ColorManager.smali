.class public Lcom/qti/snapdragon/sdk/display/ColorManager;
.super Ljava/lang/Object;
.source "ColorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/snapdragon/sdk/display/ColorManager$Log;,
        Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;,
        Lcom/qti/snapdragon/sdk/display/ColorManager$DisplayConn;,
        Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;,
        Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;,
        Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;
    }
.end annotation


# static fields
.field public static final BITFLAG_COLOR_BALANCE:J

.field public static final BITFLAG_GLOBAL_PICTURE_ADJUSTMENT:J

.field public static final BITFLAG_MEMORY_COLOR_FOLIAGE:J

.field public static final BITFLAG_MEMORY_COLOR_SKIN:J

.field public static final BITFLAG_MEMORY_COLOR_SKY:J

.field private static PA_GLOBAL_CON:I

.field private static PA_GLOBAL_DESAT:I

.field private static PA_GLOBAL_DISABLE:I

.field private static PA_GLOBAL_HUE:I

.field private static PA_GLOBAL_SAT:I

.field private static PA_GLOBAL_SAT_THRESH:I

.field private static PA_GLOBAL_VAL:I

.field private static final REMOTE_SERVICE_NAME:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static VERBOSE_ENABLED:Z

.field private static colorMgrListener:Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;

.field private static conn:Lcom/qti/snapdragon/sdk/display/ColorManager$DisplayConn;

.field private static isConnecting:Z

.field private static myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

.field private static service:Lcom/qti/snapdragon/sdk/display/IColorService;

.field private static serviceContext:Landroid/content/Context;


# instance fields
.field private displayId:I

.field private isSystemApp:Z

.field memColorRanges:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private myApplication:Landroid/app/Application;

.field paRanges:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 66
    const-string v0, "ColorManager"

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    .line 67
    const/4 v0, 0x1

    sput-boolean v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->VERBOSE_ENABLED:Z

    .line 69
    const-string v1, "1"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    sput-wide v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->BITFLAG_COLOR_BALANCE:J

    .line 70
    const-string v1, "10"

    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    sput-wide v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->BITFLAG_GLOBAL_PICTURE_ADJUSTMENT:J

    .line 71
    const-string v1, "100"

    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    sput-wide v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->BITFLAG_MEMORY_COLOR_SKIN:J

    .line 72
    const-string v1, "1000"

    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    sput-wide v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->BITFLAG_MEMORY_COLOR_SKY:J

    .line 73
    const-string v1, "10000"

    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    sput-wide v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->BITFLAG_MEMORY_COLOR_FOLIAGE:J

    .line 76
    sput v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->PA_GLOBAL_HUE:I

    .line 77
    sput v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->PA_GLOBAL_SAT:I

    .line 78
    const/4 v0, 0x4

    sput v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->PA_GLOBAL_VAL:I

    .line 79
    const/16 v0, 0x8

    sput v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->PA_GLOBAL_CON:I

    .line 80
    const/16 v0, 0x10

    sput v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->PA_GLOBAL_SAT_THRESH:I

    .line 81
    const/16 v0, 0x20

    sput v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->PA_GLOBAL_DESAT:I

    .line 82
    const/16 v0, 0x40

    sput v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->PA_GLOBAL_DISABLE:I

    .line 282
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/qti/snapdragon/sdk/display/ColorManager;

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    .line 288
    const-class v0, Lcom/qti/snapdragon/sdk/display/IColorService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->REMOTE_SERVICE_NAME:Ljava/lang/String;

    .line 306
    const/4 v0, 0x0

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->serviceContext:Landroid/content/Context;

    .line 308
    new-instance v1, Lcom/qti/snapdragon/sdk/display/ColorManager$DisplayConn;

    invoke-direct {v1, v0}, Lcom/qti/snapdragon/sdk/display/ColorManager$DisplayConn;-><init>(Lcom/qti/snapdragon/sdk/display/ColorManager$1;)V

    sput-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager;->conn:Lcom/qti/snapdragon/sdk/display/ColorManager$DisplayConn;

    .line 311
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->isConnecting:Z

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;I)V
    .locals 3
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "displayId"    # I

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->isSystemApp:Z

    .line 314
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->memColorRanges:Ljava/util/HashMap;

    .line 315
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->paRanges:Ljava/util/HashMap;

    .line 455
    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager;->REMOTE_SERVICE_NAME:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qti/snapdragon/sdk/display/IColorService;

    move-result-object v1

    sput-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    .line 456
    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    if-eqz v1, :cond_1

    .line 460
    iput-object p1, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->myApplication:Landroid/app/Application;

    .line 463
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x81

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    iput-boolean v0, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->isSystemApp:Z

    .line 465
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System app? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->isSystemApp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iput p2, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    .line 468
    return-void

    .line 457
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find IService by name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->REMOTE_SERVICE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$100()Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;
    .locals 1

    .line 64
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->colorMgrListener:Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 64
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/qti/snapdragon/sdk/display/IColorService;)Lcom/qti/snapdragon/sdk/display/IColorService;
    .locals 0
    .param p0, "x0"    # Lcom/qti/snapdragon/sdk/display/IColorService;

    .line 64
    sput-object p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 64
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->REMOTE_SERVICE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 64
    sget-boolean v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->isConnecting:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 64
    sput-boolean p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->isConnecting:Z

    return p0
.end method

.method static synthetic access$600()Z
    .locals 1

    .line 64
    sget-boolean v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->VERBOSE_ENABLED:Z

    return v0
.end method

.method public static connect(Landroid/content/Context;Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "colorListener"    # Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;

    .line 361
    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 365
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.qti.snapdragon.sdk.permission.DISPLAY_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 366
    .local v0, "res":I
    const/16 v1, -0x3e7

    if-eqz v0, :cond_1

    .line 367
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v3, "Required permission \'com.qti.snapdragon.sdk.permission.DISPLAY_SETTINGS\' is missing"

    invoke-static {v2, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    return v1

    .line 372
    :cond_1
    sput-object p1, Lcom/qti/snapdragon/sdk/display/ColorManager;->colorMgrListener:Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;

    .line 373
    sput-object p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->serviceContext:Landroid/content/Context;

    .line 374
    sget-boolean v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->isConnecting:Z

    if-eqz v2, :cond_2

    .line 375
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v3, "Connection already in progress"

    invoke-static {v2, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    return v1

    .line 379
    :cond_2
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isServiceRunning()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    .line 380
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v5, "Service running"

    invoke-static {v2, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 382
    .local v2, "serviceIntent":Landroid/content/Intent;
    const-string v5, "com.qti.service.colorservice"

    const-string v6, "com.qti.service.colorservice.ColorServiceApp"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->conn:Lcom/qti/snapdragon/sdk/display/ColorManager$DisplayConn;

    invoke-virtual {v5, v2, v6, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v5

    .line 385
    .local v5, "serviceBound":Z
    if-ne v5, v4, :cond_3

    .line 386
    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v4, "Running service bound"

    invoke-static {v1, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager;->colorMgrListener:Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;

    invoke-interface {v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;->onConnected()V

    .line 388
    return v3

    .line 391
    :cond_3
    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v4, "Bind failed even when service is running"

    invoke-static {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    return v1

    .line 396
    .end local v2
    .end local v5
    :cond_4
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v5, "Service is not running"

    invoke-static {v2, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :try_start_0
    sput-boolean v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->isConnecting:Z

    .line 402
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v5, Lcom/qti/snapdragon/sdk/display/ColorManager;->conn:Lcom/qti/snapdragon/sdk/display/ColorManager$DisplayConn;

    invoke-virtual {v2, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 406
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 404
    :catch_0
    move-exception v2

    .line 405
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 408
    .end local v2
    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 409
    .local v2, "serviceIntent":Landroid/content/Intent;
    const-string v5, "com.qti.service.colorservice"

    const-string v6, "com.qti.service.colorservice.ColorServiceApp"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->conn:Lcom/qti/snapdragon/sdk/display/ColorManager$DisplayConn;

    invoke-virtual {v5, v2, v6, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v5

    .line 412
    .restart local v5
    if-ne v5, v4, :cond_5

    .line 413
    return v3

    .line 415
    :cond_5
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v6, "Failed to connect to remote service"

    invoke-static {v4, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    sput-boolean v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->isConnecting:Z

    .line 417
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    return v1

    .line 419
    .end local v2
    .end local v5
    :catch_1
    move-exception v2

    .line 420
    .local v2, "e":Ljava/lang/SecurityException;
    sput-boolean v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->isConnecting:Z

    .line 421
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 422
    return v1

    .line 362
    .end local v0
    .end local v2
    :cond_6
    :goto_1
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v1, "One of the parmeter passed is null"

    invoke-static {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const/16 v0, -0x388

    return v0
.end method

.method public static getInstance(Landroid/app/Application;Landroid/content/Context;Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;)Lcom/qti/snapdragon/sdk/display/ColorManager;
    .locals 6
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayId"    # Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 494
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 498
    if-eqz p2, :cond_2

    .line 503
    const-string v0, "com.qti.snapdragon.sdk.permission.DISPLAY_SETTINGS"

    invoke-virtual {p0, v0}, Landroid/app/Application;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 504
    .local v0, "res":I
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 505
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v3, "Required permission \'com.qti.snapdragon.sdk.permission.DISPLAY_SETTINGS\' is missing"

    invoke-static {v2, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    return-object v1

    .line 510
    :cond_0
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {p2}, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;->getValue()I

    move-result v3

    aget-object v2, v2, v3

    if-nez v2, :cond_1

    .line 512
    :try_start_0
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {p2}, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;->getValue()I

    move-result v3

    new-instance v4, Lcom/qti/snapdragon/sdk/display/ColorManager;

    .line 513
    invoke-virtual {p2}, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;->getValue()I

    move-result v5

    invoke-direct {v4, p0, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager;-><init>(Landroid/app/Application;I)V

    aput-object v4, v2, v3

    .line 514
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Instance created for display type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    .line 521
    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {p2}, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;->getValue()I

    move-result v2

    aget-object v1, v1, v2

    return-object v1

    .line 515
    :catch_0
    move-exception v2

    .line 516
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 517
    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {p2}, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;->getValue()I

    move-result v4

    aput-object v1, v3, v4

    .line 518
    return-object v1

    .line 523
    .end local v2
    :cond_1
    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v2, "Returning existing instance"

    invoke-static {v1, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {p2}, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;->getValue()I

    move-result v2

    aget-object v1, v1, v2

    return-object v1

    .line 499
    .end local v0
    :cond_2
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v1, "Display Id passed is null"

    invoke-static {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Display ID passed is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 495
    :cond_3
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v1, "Application or context passed is null"

    invoke-static {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null passed for Application or context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isServiceRunning()Z
    .locals 8

    .line 2631
    const/4 v0, 0x0

    .line 2632
    .local v0, "serviceFound":Z
    const/4 v1, 0x0

    .line 2635
    .local v1, "in":Ljava/io/InputStream;
    :try_start_0
    const-string v2, "/system/bin/sh"

    const-string v3, "-c"

    const-string v4, "ps"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    .line 2636
    .local v2, "args":[Ljava/lang/String;
    new-instance v3, Ljava/lang/ProcessBuilder;

    invoke-direct {v3, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 2638
    .local v3, "cmd":Ljava/lang/ProcessBuilder;
    invoke-virtual {v3}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v4

    .line 2639
    .local v4, "process":Ljava/lang/Process;
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    move-object v1, v5

    .line 2640
    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 2641
    .local v5, "re":[B
    :cond_0
    invoke-virtual {v1, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 2642
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    const-string v7, "colorservice"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    .line 2643
    const/4 v0, 0x1

    .line 2644
    nop

    .line 2650
    .end local v2
    .end local v4
    .end local v5
    :cond_1
    if-eqz v1, :cond_2

    .line 2652
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 2656
    .end local v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    goto :goto_2

    .line 2653
    .restart local v3
    :catch_0
    move-exception v2

    .line 2654
    .local v2, "ex":Ljava/io/IOException;
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v5, "Harmless exception on close!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2655
    .end local v3
    :goto_1
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2
    goto :goto_0

    .line 2650
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 2647
    :catch_1
    move-exception v2

    .line 2648
    .restart local v2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 2650
    .end local v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    .line 2652
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 2653
    :catch_2
    move-exception v2

    .line 2654
    .restart local v2
    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v4, "Harmless exception on close!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2659
    .end local v2
    :cond_2
    :goto_2
    return v0

    .line 2650
    :goto_3
    if-eqz v1, :cond_3

    .line 2652
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 2656
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    .line 2653
    :catch_3
    move-exception v3

    .line 2654
    .local v3, "ex":Ljava/io/IOException;
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v5, "Harmless exception on close!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2655
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 2656
    .end local v3
    :cond_3
    :goto_4
    throw v2
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 446
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public getActiveMode()[I
    .locals 9

    .line 718
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 719
    .local v1, "retArray":[I
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v3, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v2, v2, v3

    const/16 v3, -0x3e7

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    .line 722
    const/16 v2, -0x385

    :try_start_0
    sget-object v5, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_MODE_SELECTION:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z

    move-result v5

    .line 723
    .local v5, "isSupported":Z
    if-nez v5, :cond_0

    .line 724
    aput v2, v1, v4

    .line 725
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    .line 731
    .end local v5
    :cond_0
    nop

    .line 734
    :try_start_1
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Calling getActiveMode() for display "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    new-array v0, v0, [J

    fill-array-data v0, :array_1

    .line 736
    .local v0, "retVal":[J
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget v5, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-interface {v2, v5}, Lcom/qti/snapdragon/sdk/display/IColorService;->getActiveMode(I)[J

    move-result-object v2

    move-object v0, v2

    .line 737
    if-eqz v0, :cond_3

    array-length v2, v0

    if-gtz v2, :cond_1

    goto :goto_0

    .line 741
    :cond_1
    aget-wide v5, v0, v4

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-gez v2, :cond_2

    .line 742
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service getActiveMode failed with return value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v6, v0, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    aput v3, v1, v4

    .line 744
    return-object v1

    .line 746
    :cond_2
    aget-wide v5, v0, v4

    long-to-int v2, v5

    aput v2, v1, v4

    .line 747
    const/4 v2, 0x1

    aget-wide v5, v0, v2

    long-to-int v5, v5

    aput v5, v1, v2

    .line 748
    return-object v1

    .line 738
    :cond_3
    :goto_0
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v5, "getActive service returned null "

    invoke-static {v2, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    aput v3, v1, v4

    .line 740
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    .line 750
    .end local v0
    :catch_0
    move-exception v0

    .line 751
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v5, "Service get active mode failed"

    invoke-static {v2, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    aput v3, v1, v4

    .line 753
    return-object v1

    .line 727
    .end local v0
    :catch_1
    move-exception v0

    .line 728
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 729
    aput v2, v1, v4

    .line 730
    return-object v1

    .line 756
    .end local v0
    :cond_4
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Instance for the display type "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " doesnt exist"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    aput v3, v1, v4

    .line 758
    return-object v1

    :array_0
    .array-data 4
        -0x3e7
        0x0
    .end array-data

    :array_1
    .array-data 8
        -0x3e7L
        0x0
    .end array-data
.end method

.method public getColorBalance()I
    .locals 5

    .line 623
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v1, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v0, v0, v1

    const/16 v1, -0x3e7

    if-eqz v0, :cond_2

    .line 626
    const/16 v0, -0x385

    :try_start_0
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_BALANCE:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z

    move-result v2

    .line 627
    .local v2, "isSupported":Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_0

    .line 628
    return v0

    .line 633
    .end local v2
    :cond_0
    nop

    .line 636
    :try_start_1
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling getColorBalance for display "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget v2, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-interface {v0, v2}, Lcom/qti/snapdragon/sdk/display/IColorService;->getColorBalance(I)I

    move-result v0

    .line 638
    .local v0, "retVal":I
    const/16 v2, -0x64

    if-ge v0, v2, :cond_1

    .line 639
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service getColorBalance failed with return value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v0, 0x64

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    .line 643
    :cond_1
    return v0

    .line 645
    .end local v0
    :catch_0
    move-exception v0

    .line 646
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v3, "Service get color balance failed"

    invoke-static {v2, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    return v1

    .line 630
    .end local v0
    :catch_1
    move-exception v1

    .line 631
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 632
    return v0

    .line 650
    .end local v1
    :cond_2
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instance for the display type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " doesnt exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    return v1
.end method

.method public getModes(Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;)[Lcom/qti/snapdragon/sdk/display/ModeInfo;
    .locals 5
    .param p1, "type"    # Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 827
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v1, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 829
    :try_start_0
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_MODE_SELECTION:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z

    move-result v0

    .line 830
    .local v0, "isSupported":Z
    if-nez v0, :cond_0

    .line 831
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FEATURE_COLOR_MODE_SELECTION is not supported for display "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    .line 837
    .end local v0
    :cond_0
    nop

    .line 838
    if-eqz p1, :cond_1

    .line 843
    :try_start_1
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget v2, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;->getValue()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/qti/snapdragon/sdk/display/IColorService;->getModes(II)[Lcom/qti/snapdragon/sdk/display/ModeInfo;

    move-result-object v0

    .line 844
    .local v0, "mode":[Lcom/qti/snapdragon/sdk/display/ModeInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 845
    .end local v0
    :catch_0
    move-exception v0

    .line 846
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v3, "Service get modes failed"

    invoke-static {v2, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 848
    return-object v1

    .line 839
    .end local v0
    :cond_1
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v1, "Mode Type passed is null"

    invoke-static {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Type passed is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 834
    :catch_1
    move-exception v0

    .line 835
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 836
    return-object v1

    .line 851
    .end local v0
    :cond_2
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instance for the display type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " doesnt exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    return-object v1
.end method

.method public isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z
    .locals 5
    .param p1, "feature"    # Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 539
    iget-object v0, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->myApplication:Landroid/app/Application;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 540
    return v1

    .line 542
    :cond_0
    if-eqz p1, :cond_1

    .line 546
    iget-object v0, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->myApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 548
    .local v0, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v2, "com.qti.service.colorservice"

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 552
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    .line 554
    :try_start_1
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget v3, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->getValue()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/qti/snapdragon/sdk/display/IColorService;->isFeatureSupported(II)Z

    move-result v2

    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return v2

    .line 555
    :catch_0
    move-exception v2

    .line 556
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 557
    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v4, "Service isFeatureSupported crashed"

    invoke-static {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    return v1

    .line 549
    .end local v2
    :catch_1
    move-exception v2

    .line 550
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 551
    return v1

    .line 543
    .end local v0
    .end local v2
    :cond_1
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v1, "Feature id passed is null"

    invoke-static {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Feature ID passed is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .locals 3

    .line 2575
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v1, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 2576
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v1, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 2577
    iput-object v2, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->myApplication:Landroid/app/Application;

    .line 2579
    :cond_0
    return-void
.end method

.method public setActiveMode(I)I
    .locals 5
    .param p1, "modeId"    # I

    .line 776
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v1, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v0, v0, v1

    const/16 v1, -0x3e7

    if-eqz v0, :cond_3

    .line 779
    const/16 v0, -0x385

    :try_start_0
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_MODE_SELECTION:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z

    move-result v2

    .line 780
    .local v2, "isSupported":Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 781
    return v0

    .line 786
    .end local v2
    :cond_0
    nop

    .line 789
    if-gez p1, :cond_1

    .line 790
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v1, "Mode ID provided is less than 0"

    invoke-static {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    const/16 v0, -0x386

    return v0

    .line 794
    :cond_1
    :try_start_1
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling setActiveMode for display "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget v2, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-interface {v0, v2, p1}, Lcom/qti/snapdragon/sdk/display/IColorService;->setActiveMode(II)I

    move-result v0

    .line 796
    .local v0, "retVal":I
    if-nez v0, :cond_2

    .line 797
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v3, "SetActiveMode() worked"

    invoke-static {v2, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    return v0

    .line 799
    :cond_2
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service setActiveMode failed with return value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    .line 804
    .end local v0
    :catch_0
    move-exception v0

    .line 805
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v3, "Service set active mode failed"

    invoke-static {v2, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    return v1

    .line 783
    .end local v0
    :catch_1
    move-exception v1

    .line 784
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 785
    return v0

    .line 810
    .end local v1
    :cond_3
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instance for the display type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " doesnt exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    return v1
.end method

.method public setColorBalance(I)I
    .locals 5
    .param p1, "warmth"    # I

    .line 576
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v1, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v0, v0, v1

    const/16 v1, -0x3e7

    if-eqz v0, :cond_4

    .line 579
    const/16 v0, -0x385

    :try_start_0
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_BALANCE:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z

    move-result v2

    .line 580
    .local v2, "isSupported":Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 581
    return v0

    .line 586
    .end local v2
    :cond_0
    nop

    .line 588
    const/16 v0, -0x64

    if-lt p1, v0, :cond_3

    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    goto :goto_0

    .line 593
    :cond_1
    :try_start_1
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling setColorBalance for display "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget v2, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-interface {v0, v2, p1}, Lcom/qti/snapdragon/sdk/display/IColorService;->setColorBalance(II)I

    move-result v0

    .line 595
    .local v0, "retVal":I
    if-nez v0, :cond_2

    .line 596
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v3, "SetColorBalance() worked"

    invoke-static {v2, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    return v0

    .line 598
    :cond_2
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service setColorBalance failed with return value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    .line 603
    .end local v0
    :catch_0
    move-exception v0

    .line 604
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v3, "Service set color balance failed"

    invoke-static {v2, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    return v1

    .line 589
    .end local v0
    :cond_3
    :goto_0
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v1, "Warmth given is outside the range (-100, 100)"

    invoke-static {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const/16 v0, -0x386

    return v0

    .line 583
    :catch_1
    move-exception v1

    .line 584
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 585
    return v0

    .line 609
    .end local v1
    :cond_4
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instance for the display type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " doesnt exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    return v1
.end method

.method public setDefaultMode(I)I
    .locals 5
    .param p1, "modeId"    # I

    .line 1189
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v1, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v0, v0, v1

    const/16 v1, -0x3e7

    if-eqz v0, :cond_4

    .line 1192
    const/16 v0, -0x385

    :try_start_0
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_MODE_SELECTION:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z

    move-result v2

    .line 1193
    .local v2, "isSupported":Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 1194
    return v0

    .line 1199
    .end local v2
    :cond_0
    nop

    .line 1202
    iget-boolean v0, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->isSystemApp:Z

    if-nez v0, :cond_1

    .line 1203
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v1, "You do not have permission to perform this operation"

    invoke-static {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    const/16 v0, -0x387

    return v0

    .line 1206
    :cond_1
    if-gez p1, :cond_2

    .line 1207
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v1, "Mode ID provided is less than 0"

    invoke-static {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    const/16 v0, -0x386

    return v0

    .line 1211
    :cond_2
    :try_start_1
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling setDefaultMode for display "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget v2, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-interface {v0, v2, p1}, Lcom/qti/snapdragon/sdk/display/IColorService;->setDefaultMode(II)I

    move-result v0

    .line 1213
    .local v0, "retVal":I
    if-nez v0, :cond_3

    .line 1214
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v3, "SetDefaultMode() worked"

    invoke-static {v2, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    return v0

    .line 1216
    :cond_3
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service setDefaultMode failed with return value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    .line 1221
    .end local v0
    :catch_0
    move-exception v0

    .line 1222
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v3, "Service set default mode failed"

    invoke-static {v2, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    return v1

    .line 1196
    .end local v0
    :catch_1
    move-exception v1

    .line 1197
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 1198
    return v0

    .line 1227
    .end local v1
    :cond_4
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instance for the display type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " doesnt exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    return v1
.end method
