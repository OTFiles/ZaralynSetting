.class Lcom/android/settings/applications/ManageApplicationsSettings$1;
.super Ljava/lang/Object;
.source "ManageApplicationsSettings.java"

# interfaces
.implements Lcom/android/settings/view/LocalPagerTitleStrip$OnSelectedItemTabListener;


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

    .line 1205
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$1;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(I)V
    .locals 2
    .param p1, "index"    # I

    .line 1209
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$1;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplicationsSettings;->mCurTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$1;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsSettings;->access$600(Lcom/android/settings/applications/ManageApplicationsSettings;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$1;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    iget-object v1, v1, Lcom/android/settings/applications/ManageApplicationsSettings;->mCurTab:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1210
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$1;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsSettings;->access$1700(Lcom/android/settings/applications/ManageApplicationsSettings;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1212
    :cond_0
    return-void
.end method
