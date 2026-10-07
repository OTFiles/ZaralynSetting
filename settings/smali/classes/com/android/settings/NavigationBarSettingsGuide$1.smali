.class Lcom/android/settings/NavigationBarSettingsGuide$1;
.super Ljava/lang/Object;
.source "NavigationBarSettingsGuide.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/NavigationBarSettingsGuide;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NavigationBarSettingsGuide;


# direct methods
.method constructor <init>(Lcom/android/settings/NavigationBarSettingsGuide;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/NavigationBarSettingsGuide;

    .line 151
    iput-object p1, p0, Lcom/android/settings/NavigationBarSettingsGuide$1;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .line 186
    iget-object v0, p0, Lcom/android/settings/NavigationBarSettingsGuide$1;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-static {v0}, Lcom/android/settings/NavigationBarSettingsGuide;->access$500(Lcom/android/settings/NavigationBarSettingsGuide;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/settings/NavigationBarSettingsGuide$1;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-static {v0, v1}, Lcom/android/settings/NavigationBarSettingsGuide;->access$502(Lcom/android/settings/NavigationBarSettingsGuide;Z)Z

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/settings/NavigationBarSettingsGuide$1;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-static {v0}, Lcom/android/settings/NavigationBarSettingsGuide;->access$000(Lcom/android/settings/NavigationBarSettingsGuide;)I

    move-result v0

    .line 191
    .local v0, "pageIndex":I
    iget-object v2, p0, Lcom/android/settings/NavigationBarSettingsGuide$1;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-static {v2}, Lcom/android/settings/NavigationBarSettingsGuide;->access$000(Lcom/android/settings/NavigationBarSettingsGuide;)I

    move-result v2

    if-nez v2, :cond_1

    .line 192
    iget-object v2, p0, Lcom/android/settings/NavigationBarSettingsGuide$1;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-static {v2}, Lcom/android/settings/NavigationBarSettingsGuide;->access$100(Lcom/android/settings/NavigationBarSettingsGuide;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 193
    :cond_1
    iget-object v2, p0, Lcom/android/settings/NavigationBarSettingsGuide$1;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-static {v2}, Lcom/android/settings/NavigationBarSettingsGuide;->access$000(Lcom/android/settings/NavigationBarSettingsGuide;)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/NavigationBarSettingsGuide$1;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-static {v3}, Lcom/android/settings/NavigationBarSettingsGuide;->access$100(Lcom/android/settings/NavigationBarSettingsGuide;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ne v2, v3, :cond_2

    .line 194
    const/4 v0, 0x1

    .line 196
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/settings/NavigationBarSettingsGuide$1;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-static {v2}, Lcom/android/settings/NavigationBarSettingsGuide;->access$000(Lcom/android/settings/NavigationBarSettingsGuide;)I

    move-result v2

    if-eq v0, v2, :cond_3

    .line 198
    iget-object v2, p0, Lcom/android/settings/NavigationBarSettingsGuide$1;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-static {v2}, Lcom/android/settings/NavigationBarSettingsGuide;->access$400(Lcom/android/settings/NavigationBarSettingsGuide;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 199
    return-void

    .line 201
    :cond_3
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .line 154
    return-void
.end method

.method public onPageSelected(I)V
    .locals 5
    .param p1, "position"    # I

    .line 160
    iget-object v0, p0, Lcom/android/settings/NavigationBarSettingsGuide$1;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-static {v0, p1}, Lcom/android/settings/NavigationBarSettingsGuide;->access$002(Lcom/android/settings/NavigationBarSettingsGuide;I)I

    .line 161
    iget-object v0, p0, Lcom/android/settings/NavigationBarSettingsGuide$1;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-static {v0}, Lcom/android/settings/NavigationBarSettingsGuide;->access$000(Lcom/android/settings/NavigationBarSettingsGuide;)I

    move-result v0

    .line 162
    .local v0, "pageIndex":I
    iget-object v1, p0, Lcom/android/settings/NavigationBarSettingsGuide$1;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-static {v1}, Lcom/android/settings/NavigationBarSettingsGuide;->access$000(Lcom/android/settings/NavigationBarSettingsGuide;)I

    move-result v1

    if-nez v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/android/settings/NavigationBarSettingsGuide$1;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-static {v1}, Lcom/android/settings/NavigationBarSettingsGuide;->access$100(Lcom/android/settings/NavigationBarSettingsGuide;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/android/settings/NavigationBarSettingsGuide$1;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-static {v1}, Lcom/android/settings/NavigationBarSettingsGuide;->access$000(Lcom/android/settings/NavigationBarSettingsGuide;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/NavigationBarSettingsGuide$1;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-static {v2}, Lcom/android/settings/NavigationBarSettingsGuide;->access$100(Lcom/android/settings/NavigationBarSettingsGuide;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ne v1, v2, :cond_1

    .line 165
    const/4 v0, 0x1

    .line 167
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/NavigationBarSettingsGuide$1;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-static {v1, v0}, Lcom/android/settings/NavigationBarSettingsGuide;->access$200(Lcom/android/settings/NavigationBarSettingsGuide;I)V

    .line 169
    iget-object v1, p0, Lcom/android/settings/NavigationBarSettingsGuide$1;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-static {v1}, Lcom/android/settings/NavigationBarSettingsGuide;->access$300(Lcom/android/settings/NavigationBarSettingsGuide;)Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 170
    iget-object v1, p0, Lcom/android/settings/NavigationBarSettingsGuide$1;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-static {v1}, Lcom/android/settings/NavigationBarSettingsGuide;->access$400(Lcom/android/settings/NavigationBarSettingsGuide;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    .line 171
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 172
    iget-object v3, p0, Lcom/android/settings/NavigationBarSettingsGuide$1;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-static {v3}, Lcom/android/settings/NavigationBarSettingsGuide;->access$400(Lcom/android/settings/NavigationBarSettingsGuide;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 173
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 174
    const v4, 0x7f0a028a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/settings/widget/QQAssetAnimView;

    .line 175
    .local v4, "qqAssetAnimView":Lcom/android/settings/widget/QQAssetAnimView;
    if-eqz v4, :cond_2

    .line 176
    invoke-virtual {v4}, Lcom/android/settings/widget/QQAssetAnimView;->forceRestartSelfPauseAnim()V

    .line 171
    .end local v3
    .end local v4
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 181
    .end local v1
    .end local v2
    :cond_3
    return-void
.end method
