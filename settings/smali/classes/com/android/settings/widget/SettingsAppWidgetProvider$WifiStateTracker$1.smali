.class Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;
.super Landroid/os/AsyncTask;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;->requestStateChange(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;

.field final synthetic val$desiredState:Z

.field final synthetic val$wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;Landroid/net/wifi/WifiManager;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;

    .line 393
    iput-object p1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;->this$0:Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;

    iput-object p2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    iput-boolean p3, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;->val$desiredState:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 393
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "args"    # [Ljava/lang/Void;

    .line 396
    iget-object v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    iget-boolean v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;->val$desiredState:Z

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 397
    const/4 v0, 0x0

    return-object v0
.end method
