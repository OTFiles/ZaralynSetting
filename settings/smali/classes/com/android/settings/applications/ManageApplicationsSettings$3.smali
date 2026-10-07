.class Lcom/android/settings/applications/ManageApplicationsSettings$3;
.super Ljava/lang/Object;
.source "ManageApplicationsSettings.java"

# interfaces
.implements Lcom/android/settings/custom/EditFilterName$EditFilterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ManageApplicationsSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 1242
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$3;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exchangeEditContentLengthExchange(Z)V
    .locals 3
    .param p1, "bEnable"    # Z

    .line 1245
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$3;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsSettings;->access$1900(Lcom/android/settings/applications/ManageApplicationsSettings;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1247
    if-nez p1, :cond_1

    .line 1249
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$3;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsSettings;->access$300(Lcom/android/settings/applications/ManageApplicationsSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1250
    const-string v0, ""

    sput-object v0, Lcom/android/settings/applications/ManageApplicationsSettings;->mAppsSearchKey:Ljava/lang/String;

    .line 1251
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$3;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplicationsSettings;->mAppsSearchType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$3;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplicationsSettings;->mCurTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$3;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplicationsSettings;->mAppsSearchType:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$3;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings$3;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    iget-object v2, v2, Lcom/android/settings/applications/ManageApplicationsSettings;->mCurTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    iget v2, v2, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mListType:I

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/ManageApplicationsSettings;->getAppsSearchType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1252
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$3;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$3;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-static {v1}, Lcom/android/settings/applications/ManageApplicationsSettings;->access$1700(Lcom/android/settings/applications/ManageApplicationsSettings;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/ManageApplicationsSettings;->updateCurrentTab(IZ)V

    .line 1256
    :cond_1
    return-void
.end method
