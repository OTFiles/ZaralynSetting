.class public Lcom/android/settings/SettingsFactoryAutoTMIntentService$PNetCnnReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsFactoryAutoTMIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsFactoryAutoTMIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PNetCnnReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsFactoryAutoTMIntentService;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsFactoryAutoTMIntentService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsFactoryAutoTMIntentService;

    .line 196
    iput-object p1, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService$PNetCnnReceiver;->this$0:Lcom/android/settings/SettingsFactoryAutoTMIntentService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 199
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    const-string v1, ""

    const-string v2, "=========divhee=========PowerConnectionReceiver==WIFI_STATE_CHANGED_ACTION======"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/settings/SettingsFactoryAutoTMIntentService$PNetCnnReceiver$1;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/SettingsFactoryAutoTMIntentService$PNetCnnReceiver$1;-><init>(Lcom/android/settings/SettingsFactoryAutoTMIntentService$PNetCnnReceiver;Landroid/content/Context;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 210
    :cond_0
    return-void
.end method
