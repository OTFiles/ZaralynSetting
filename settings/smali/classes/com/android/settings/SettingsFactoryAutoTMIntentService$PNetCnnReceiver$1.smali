.class Lcom/android/settings/SettingsFactoryAutoTMIntentService$PNetCnnReceiver$1;
.super Ljava/lang/Object;
.source "SettingsFactoryAutoTMIntentService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsFactoryAutoTMIntentService$PNetCnnReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/SettingsFactoryAutoTMIntentService$PNetCnnReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsFactoryAutoTMIntentService$PNetCnnReceiver;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/SettingsFactoryAutoTMIntentService$PNetCnnReceiver;

    .line 203
    iput-object p1, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService$PNetCnnReceiver$1;->this$1:Lcom/android/settings/SettingsFactoryAutoTMIntentService$PNetCnnReceiver;

    iput-object p2, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService$PNetCnnReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService$PNetCnnReceiver$1;->this$1:Lcom/android/settings/SettingsFactoryAutoTMIntentService$PNetCnnReceiver;

    iget-object v0, v0, Lcom/android/settings/SettingsFactoryAutoTMIntentService$PNetCnnReceiver;->this$0:Lcom/android/settings/SettingsFactoryAutoTMIntentService;

    iget-object v1, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService$PNetCnnReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->getWifiHotSsidInfo(Landroid/content/Context;)V

    .line 207
    return-void
.end method
