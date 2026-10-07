.class Lcom/android/settings/applications/ManageApplicationsSettings$7;
.super Ljava/lang/Object;
.source "ManageApplicationsSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ManageApplicationsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ManageApplicationsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageApplicationsSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/applications/ManageApplicationsSettings;

    .line 1350
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$7;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1353
    sget-object v0, Lcom/android/settings/applications/ManageApplicationsSettings;->mAppsSearchKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1354
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$7;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings$7;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-static {v2}, Lcom/android/settings/applications/ManageApplicationsSettings;->access$1700(Lcom/android/settings/applications/ManageApplicationsSettings;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/applications/ManageApplicationsSettings;->updateCurrentTab(IZ)V

    goto :goto_0

    .line 1355
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$7;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsSettings;->access$2200(Lcom/android/settings/applications/ManageApplicationsSettings;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1356
    const-string v0, "settings"

    sput-object v0, Lcom/android/settings/applications/ManageApplicationsSettings;->mAppsSearchKey:Ljava/lang/String;

    .line 1357
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$7;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings$7;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-static {v2}, Lcom/android/settings/applications/ManageApplicationsSettings;->access$1700(Lcom/android/settings/applications/ManageApplicationsSettings;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/applications/ManageApplicationsSettings;->updateCurrentTab(IZ)V

    .line 1358
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$7;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsSettings;->access$400(Lcom/android/settings/applications/ManageApplicationsSettings;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$7;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-static {v1}, Lcom/android/settings/applications/ManageApplicationsSettings;->access$2300(Lcom/android/settings/applications/ManageApplicationsSettings;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1359
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$7;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsSettings;->access$2200(Lcom/android/settings/applications/ManageApplicationsSettings;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1360
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$7;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$7;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-static {v1}, Lcom/android/settings/applications/ManageApplicationsSettings;->access$1700(Lcom/android/settings/applications/ManageApplicationsSettings;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ManageApplicationsSettings;->updateCurrentTab(I)V

    .line 1362
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$7;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/applications/ManageApplicationsSettings;->access$2202(Lcom/android/settings/applications/ManageApplicationsSettings;Z)Z

    .line 1363
    return-void
.end method
