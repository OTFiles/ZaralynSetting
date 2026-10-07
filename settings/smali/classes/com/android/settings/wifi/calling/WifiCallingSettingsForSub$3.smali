.class Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$3;
.super Landroid/content/BroadcastReceiver;
.source "WifiCallingSettingsForSub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    .line 193
    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$3;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 196
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.android.ims.REGISTRATION_ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$3;->setResultCode(I)V

    .line 206
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$3;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-static {v1, p2}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->access$300(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;Landroid/content/Intent;)V

    .line 208
    :cond_0
    return-void
.end method
