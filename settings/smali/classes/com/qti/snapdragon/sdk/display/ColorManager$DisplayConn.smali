.class Lcom/qti/snapdragon/sdk/display/ColorManager$DisplayConn;
.super Ljava/lang/Object;
.source "ColorManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/snapdragon/sdk/display/ColorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisplayConn"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qti/snapdragon/sdk/display/ColorManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qti/snapdragon/sdk/display/ColorManager$1;

    .line 317
    invoke-direct {p0}, Lcom/qti/snapdragon/sdk/display/ColorManager$DisplayConn;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 321
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/ColorManager;->access$100()Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 322
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/ColorManager;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Listener is null"

    invoke-static {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    return-void

    .line 326
    :cond_0
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/ColorManager;->access$400()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 325
    invoke-static {v0}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qti/snapdragon/sdk/display/IColorService;

    move-result-object v0

    invoke-static {v0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->access$302(Lcom/qti/snapdragon/sdk/display/IColorService;)Lcom/qti/snapdragon/sdk/display/IColorService;

    .line 327
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/ColorManager;->access$500()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 328
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/ColorManager;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Callback called"

    invoke-static {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/ColorManager;->access$100()Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;->onConnected()V

    goto :goto_0

    .line 332
    :cond_1
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/ColorManager;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Callback not called"

    invoke-static {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->access$502(Z)Z

    .line 335
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 340
    return-void
.end method
