.class public Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController$ShowHideUpdater;
.super Landroid/os/AsyncTask;
.source "AppActionResetButtonPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowHideUpdater"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;

    .line 181
    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController$ShowHideUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 181
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController$ShowHideUpdater;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "params"    # [Ljava/lang/String;

    .line 185
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 186
    .local v1, "pkgName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 187
    return-object v3

    .line 189
    :cond_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->isPackageForbidden(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 190
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SettingsApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 191
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-static {v2, v1, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setApplicationFrozen(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V

    .line 192
    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController$ShowHideUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;

    invoke-static {v4}, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;->access$000(Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;)Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController$ShowHideUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;

    invoke-static {v4}, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;->access$000(Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;)Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->isSystemProtectedApp()Z

    move-result v4

    if-nez v4, :cond_1

    .line 193
    invoke-static {v2, v1, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setActivityDisplayByPkgName(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V

    .line 195
    :cond_1
    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setActivityDisplayByPkgName(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V

    .line 196
    invoke-static {v2, v1, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setServiceEnabledByPkgName(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V

    .line 197
    invoke-static {v2, v1, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setReceiversEnabledByPkgName(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V

    .line 199
    .end local v2
    :cond_2
    return-object v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 181
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController$ShowHideUpdater;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4
    .param p1, "entry"    # Ljava/lang/String;

    .line 204
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController$ShowHideUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;->access$100(Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController$ShowHideUpdater$1;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController$ShowHideUpdater$1;-><init>(Lcom/android/settings/applications/appinfo/AppActionResetButtonPreferenceController$ShowHideUpdater;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 210
    return-void
.end method
