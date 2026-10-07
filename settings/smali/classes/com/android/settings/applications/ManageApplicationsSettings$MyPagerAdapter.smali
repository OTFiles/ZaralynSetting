.class Lcom/android/settings/applications/ManageApplicationsSettings$MyPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ManageApplicationsSettings.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ManageApplicationsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPagerAdapter"
.end annotation


# instance fields
.field mCurPos:I

.field final synthetic this$0:Lcom/android/settings/applications/ManageApplicationsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageApplicationsSettings;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/applications/ManageApplicationsSettings;

    .line 660
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$MyPagerAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 662
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$MyPagerAdapter;->mCurPos:I

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 682
    move-object v0, p3

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 683
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 666
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$MyPagerAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsSettings;->access$500(Lcom/android/settings/applications/ManageApplicationsSettings;)I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 692
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .line 698
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$MyPagerAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsSettings;->access$600(Lcom/android/settings/applications/ManageApplicationsSettings;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .line 671
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$MyPagerAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsSettings;->access$600(Lcom/android/settings/applications/ManageApplicationsSettings;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;

    .line 672
    .local v0, "tab":Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$MyPagerAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-static {v1}, Lcom/android/settings/applications/ManageApplicationsSettings;->access$700(Lcom/android/settings/applications/ManageApplicationsSettings;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsSettings$MyPagerAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-static {v2}, Lcom/android/settings/applications/ManageApplicationsSettings;->access$800(Lcom/android/settings/applications/ManageApplicationsSettings;)Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplicationsSettings$MyPagerAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-static {v3}, Lcom/android/settings/applications/ManageApplicationsSettings;->access$900(Lcom/android/settings/applications/ManageApplicationsSettings;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/applications/ManageApplicationsSettings$TabInfo;->build(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 673
    .local v1, "root":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    .line 674
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 675
    const v2, 0x7f0a0289

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 677
    :cond_0
    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .line 687
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .line 715
    if-nez p1, :cond_0

    .line 716
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$MyPagerAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    iget v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$MyPagerAdapter;->mCurPos:I

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ManageApplicationsSettings;->updateCurrentTab(I)V

    .line 718
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .line 703
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .line 707
    iput p1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$MyPagerAdapter;->mCurPos:I

    .line 708
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$MyPagerAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsSettings;->access$1000(Lcom/android/settings/applications/ManageApplicationsSettings;)Lcom/android/settings/view/LocalPagerTitleStrip;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$MyPagerAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsSettings;->access$1000(Lcom/android/settings/applications/ManageApplicationsSettings;)Lcom/android/settings/view/LocalPagerTitleStrip;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/view/LocalPagerTitleStrip;->select(I)V

    .line 711
    :cond_0
    return-void
.end method
