.class public Lcom/android/settingslib/applications/PermissionsSummaryHelper;
.super Ljava/lang/Object;
.source "PermissionsSummaryHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;
    }
.end annotation


# direct methods
.method public static getPermissionSummary(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    .line 37
    invoke-static {p0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    .line 38
    .local v0, "isWifiOnly":Z
    nop

    .line 39
    invoke-static {p0}, Landroid/content/pm/permission/RuntimePermissionPresenter;->getInstance(Landroid/content/Context;)Landroid/content/pm/permission/RuntimePermissionPresenter;

    move-result-object v1

    .line 40
    .local v1, "presenter":Landroid/content/pm/permission/RuntimePermissionPresenter;
    new-instance v2, Lcom/android/settingslib/applications/PermissionsSummaryHelper$1;

    invoke-direct {v2, v0, p2}, Lcom/android/settingslib/applications/PermissionsSummaryHelper$1;-><init>(ZLcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;)V

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/pm/permission/RuntimePermissionPresenter;->getAppPermissions(Ljava/lang/String;Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;Landroid/os/Handler;)V

    .line 86
    return-void
.end method
