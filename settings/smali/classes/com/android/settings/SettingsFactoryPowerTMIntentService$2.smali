.class Lcom/android/settings/SettingsFactoryPowerTMIntentService$2;
.super Ljava/lang/Object;
.source "SettingsFactoryPowerTMIntentService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsFactoryPowerTMIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsFactoryPowerTMIntentService;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsFactoryPowerTMIntentService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsFactoryPowerTMIntentService;

    .line 270
    iput-object p1, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService$2;->this$0:Lcom/android/settings/SettingsFactoryPowerTMIntentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService$2;->this$0:Lcom/android/settings/SettingsFactoryPowerTMIntentService;

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->getWifiHotSsidInfo(Landroid/content/Context;)V

    .line 274
    return-void
.end method
