.class Lcom/android/settings/applications/ManageApplicationsSettings$8;
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

    .line 1365
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$8;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1368
    const-string v0, ""

    sput-object v0, Lcom/android/settings/applications/ManageApplicationsSettings;->mAppsSearchKey:Ljava/lang/String;

    .line 1369
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$8;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$8;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-static {v1}, Lcom/android/settings/applications/ManageApplicationsSettings;->access$1700(Lcom/android/settings/applications/ManageApplicationsSettings;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/ManageApplicationsSettings;->updateCurrentTab(IZ)V

    .line 1370
    return-void
.end method
