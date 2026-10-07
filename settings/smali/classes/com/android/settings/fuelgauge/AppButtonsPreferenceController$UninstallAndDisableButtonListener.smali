.class Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;
.super Ljava/lang/Object;
.source "AppButtonsPreferenceController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UninstallAndDisableButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;


# direct methods
.method private constructor <init>(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;
    .param p2, "x1"    # Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$1;

    .line 200
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;-><init>(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .line 204
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 206
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-static {v1}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->access$200(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    iget-object v2, v2, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-static {v1}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->access$300(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)V

    .line 208
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-static {v3}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->access$400(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object v3

    const-class v4, Lcom/android/settings/DeviceAdminAdd;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    .local v1, "uninstallDaIntent":Landroid/content/Intent;
    const-string v3, "android.app.extra.DEVICE_ADMIN_PACKAGE_NAME"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    iget-object v3, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-static {v3}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->access$500(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-static {v4}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->access$400(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object v4

    const/16 v5, 0x369

    new-array v2, v2, [Landroid/util/Pair;

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 213
    iget-object v2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-static {v2}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->access$700(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)Landroid/app/Fragment;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-static {v3}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->access$600(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 214
    return-void

    .line 216
    .end local v1
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    .line 217
    invoke-static {v1}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->access$400(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    .line 218
    invoke-static {v3}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->access$800(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)I

    move-result v3

    .line 217
    invoke-static {v1, v0, v3}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfUninstallBlocked(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    .line 219
    .local v1, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    iget-object v3, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-static {v3}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->access$900(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    .line 220
    invoke-static {v3}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->access$400(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-static {v5}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->access$800(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)I

    move-result v5

    invoke-static {v3, v0, v5}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v4

    .line 221
    .local v3, "uninstallBlockedBySystem":Z
    :goto_1
    if-eqz v1, :cond_3

    if-nez v3, :cond_3

    .line 222
    iget-object v2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-static {v2}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->access$400(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto/16 :goto_3

    .line 223
    :cond_3
    iget-object v5, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    iget-object v5, v5, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v5, v4

    if-eqz v5, :cond_7

    .line 224
    iget-object v5, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    iget-object v5, v5, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-static {v5}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->access$1000(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 228
    iget-object v5, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-static {v5}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->access$1100(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-static {v5}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->access$1200(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 229
    iget-object v2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-static {v2, v4}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->access$1300(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;I)V

    goto :goto_3

    .line 231
    :cond_4
    iget-object v4, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-static {v4, v2}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->access$1300(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;I)V

    goto :goto_3

    .line 234
    :cond_5
    iget-object v4, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-static {v4}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->access$500(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    .line 235
    invoke-static {v5}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->access$400(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object v5

    .line 236
    iget-object v6, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    iget-object v6, v6, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v6, v6, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v6, :cond_6

    .line 237
    const/16 v6, 0x36a

    goto :goto_2

    .line 238
    :cond_6
    const/16 v6, 0x36b

    :goto_2
    new-array v7, v2, [Landroid/util/Pair;

    .line 234
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 239
    new-instance v4, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$DisableChangerRunnable;

    iget-object v5, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    iget-object v6, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-static {v6}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->access$1400(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    iget-object v7, v7, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7, v2}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$DisableChangerRunnable;-><init>(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;Landroid/content/pm/PackageManager;Ljava/lang/String;I)V

    invoke-static {v4}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 242
    :cond_7
    iget-object v5, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    iget-object v5, v5, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x800000

    and-int/2addr v5, v6

    if-nez v5, :cond_8

    .line 243
    iget-object v5, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-virtual {v5, v0, v4, v2}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_3

    .line 245
    :cond_8
    iget-object v4, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-virtual {v4, v0, v2, v2}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->uninstallPkg(Ljava/lang/String;ZZ)V

    .line 247
    :goto_3
    return-void
.end method
