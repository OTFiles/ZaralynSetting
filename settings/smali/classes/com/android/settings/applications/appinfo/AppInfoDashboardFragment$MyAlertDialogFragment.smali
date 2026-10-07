.class public Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$MyAlertDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "AppInfoDashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyAlertDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 985
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(II)Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$MyAlertDialogFragment;
    .locals 3
    .param p0, "id"    # I
    .param p1, "errorCode"    # I

    .line 1007
    new-instance v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$MyAlertDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$MyAlertDialogFragment;-><init>()V

    .line 1008
    .local v0, "dialogFragment":Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$MyAlertDialogFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1009
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1010
    const-string v2, "moveError"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1011
    invoke-virtual {v0, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$MyAlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1012
    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 991
    const/16 v0, 0x22e

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 996
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$MyAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 997
    .local v0, "id":I
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$MyAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "moveError"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 998
    .local v1, "errorCode":I
    nop

    .line 999
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$MyAlertDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v2, v0, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->createDialog(II)Landroid/app/AlertDialog;

    move-result-object v2

    .line 1000
    .local v2, "dialog":Landroid/app/Dialog;
    if-eqz v2, :cond_0

    .line 1003
    return-object v2

    .line 1001
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
