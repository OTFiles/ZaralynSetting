.class Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "AppActionButtonPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;

    .line 75
    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController$1;->this$0:Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController$1;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 79
    .local v0, "enabled":Z
    :goto_0
    const-string v1, "AppActionButtonControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got broadcast response: Restart status for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController$1;->this$0:Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;

    .line 80
    invoke-static {v3}, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->access$000(Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;)Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getAppEntry()Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v3

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController$1;->this$0:Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;

    invoke-static {v1, v0}, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->access$100(Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;Z)V

    .line 82
    return-void
.end method
