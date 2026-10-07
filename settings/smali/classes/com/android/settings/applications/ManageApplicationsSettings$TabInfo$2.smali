.class Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo$2;
.super Ljava/lang/Object;
.source "ManageApplicationsSettings.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->build(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    .line 326
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo$2;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .line 340
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .line 329
    if-nez p2, :cond_1

    .line 330
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo$2;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->access$000(Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo$2;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo$2;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    invoke-static {v1}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->access$000(Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->access$102(Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;I)I

    .line 332
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo$2;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->access$000(Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 333
    .local v0, "v1":Landroid/view/View;
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo$2;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    invoke-static {v2, v1}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->access$202(Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;I)I

    .line 336
    .end local v0
    :cond_1
    return-void
.end method
