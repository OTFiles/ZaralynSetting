.class Lcom/android/settings/SettingsCameraConfigureIntentService$2;
.super Ljava/lang/Object;
.source "SettingsCameraConfigureIntentService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsCameraConfigureIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsCameraConfigureIntentService;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsCameraConfigureIntentService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsCameraConfigureIntentService;

    .line 251
    iput-object p1, p0, Lcom/android/settings/SettingsCameraConfigureIntentService$2;->this$0:Lcom/android/settings/SettingsCameraConfigureIntentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 255
    :try_start_0
    new-instance v0, Lcom/android/settings/SettingsCameraConfigureIntentService$MyUpdateCameraInfoTask;

    iget-object v1, p0, Lcom/android/settings/SettingsCameraConfigureIntentService$2;->this$0:Lcom/android/settings/SettingsCameraConfigureIntentService;

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsCameraConfigureIntentService$MyUpdateCameraInfoTask;-><init>(Lcom/android/settings/SettingsCameraConfigureIntentService;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsCameraConfigureIntentService$MyUpdateCameraInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 257
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 258
    :goto_0
    return-void
.end method
