.class Lcom/android/settings/SettingsRamFusion$2;
.super Ljava/lang/Object;
.source "SettingsRamFusion.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsRamFusion;->onclickEvent(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsRamFusion;

.field final synthetic val$bValue:Z


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsRamFusion;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsRamFusion;

    .line 206
    iput-object p1, p0, Lcom/android/settings/SettingsRamFusion$2;->this$0:Lcom/android/settings/SettingsRamFusion;

    iput-boolean p2, p0, Lcom/android/settings/SettingsRamFusion$2;->val$bValue:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 209
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 246
    const-string v0, "persist.sys.ext_swap_switch"

    iget-boolean v1, p0, Lcom/android/settings/SettingsRamFusion$2;->val$bValue:Z

    if-eqz v1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.REBOOT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 248
    .local v0, "intent2":Landroid/content/Intent;
    const-string v1, "nowait"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 249
    const-string v1, "interval"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 250
    const-string v1, "window"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 251
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/SettingsApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 252
    return-void
.end method
