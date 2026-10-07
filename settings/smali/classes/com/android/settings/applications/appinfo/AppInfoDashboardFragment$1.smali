.class Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$1;
.super Ljava/lang/Object;
.source "AppInfoDashboardFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->createDialog(II)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 653
    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$1;->this$0:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 656
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$1;->this$0:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->access$000(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$1;->this$0:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Landroid/util/Pair;

    const/16 v4, 0x36a

    invoke-virtual {v0, v1, v4, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 658
    new-instance v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$DisableChanger;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$1;->this$0:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$1;->this$0:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 659
    invoke-static {v3}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->access$100(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v3

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v4, 0x3

    invoke-direct {v0, v1, v3, v4}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$DisableChanger;-><init>(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Landroid/content/pm/ApplicationInfo;I)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 662
    invoke-virtual {v0, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 663
    return-void
.end method
