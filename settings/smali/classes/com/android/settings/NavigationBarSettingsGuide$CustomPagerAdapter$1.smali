.class Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter$1;
.super Ljava/lang/Object;
.source "NavigationBarSettingsGuide.java"

# interfaces
.implements Lcom/android/settings/widget/QQAssetAnimView$OwnerActivtiyState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter;

    .line 426
    iput-object p1, p0, Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter$1;->this$1:Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bHidedScreen(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mAnimTagObj"    # Ljava/lang/String;

    .line 434
    const/4 v0, 0x0

    return v0
.end method

.method public bOwnerActPause(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mAnimTagObj"    # Ljava/lang/String;

    .line 429
    iget-object v0, p0, Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter$1;->this$1:Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter;

    iget-object v0, v0, Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    iget-boolean v0, v0, Lcom/android/settings/NavigationBarSettingsGuide;->isOnPaused:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter$1;->bHidedScreen(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public endAnyTimes(Ljava/lang/String;)Z
    .locals 4
    .param p1, "tagObj"    # Ljava/lang/String;

    .line 446
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter$1;->this$1:Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter;

    iget-object v1, v1, Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-static {v1}, Lcom/android/settings/NavigationBarSettingsGuide;->access$500(Lcom/android/settings/NavigationBarSettingsGuide;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter$1;->this$1:Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter;

    iget-object v1, v1, Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-static {v1}, Lcom/android/settings/NavigationBarSettingsGuide;->access$400(Lcom/android/settings/NavigationBarSettingsGuide;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter$1;->this$1:Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter;

    iget-object v1, v1, Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-virtual {v1}, Lcom/android/settings/NavigationBarSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter$1;->this$1:Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter;

    iget-object v1, v1, Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-virtual {v1}, Lcom/android/settings/NavigationBarSettingsGuide;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 447
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter$1;->this$1:Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter;

    iget-object v2, v2, Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-static {v2}, Lcom/android/settings/NavigationBarSettingsGuide;->access$000(Lcom/android/settings/NavigationBarSettingsGuide;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 448
    iget-object v1, p0, Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter$1;->this$1:Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter;

    iget-object v1, v1, Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-static {v1}, Lcom/android/settings/NavigationBarSettingsGuide;->access$008(Lcom/android/settings/NavigationBarSettingsGuide;)I

    .line 449
    iget-object v1, p0, Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter$1;->this$1:Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter;

    iget-object v1, v1, Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-static {v1}, Lcom/android/settings/NavigationBarSettingsGuide;->access$000(Lcom/android/settings/NavigationBarSettingsGuide;)I

    move-result v1

    .line 450
    .local v1, "pageIndex":I
    iget-object v2, p0, Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter$1;->this$1:Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter;

    iget-object v2, v2, Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-static {v2}, Lcom/android/settings/NavigationBarSettingsGuide;->access$000(Lcom/android/settings/NavigationBarSettingsGuide;)I

    move-result v2

    if-nez v2, :cond_0

    .line 451
    iget-object v2, p0, Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter$1;->this$1:Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter;

    iget-object v2, v2, Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-static {v2}, Lcom/android/settings/NavigationBarSettingsGuide;->access$100(Lcom/android/settings/NavigationBarSettingsGuide;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v2

    goto :goto_0

    .line 452
    :cond_0
    iget-object v2, p0, Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter$1;->this$1:Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter;

    iget-object v2, v2, Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-static {v2}, Lcom/android/settings/NavigationBarSettingsGuide;->access$000(Lcom/android/settings/NavigationBarSettingsGuide;)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter$1;->this$1:Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter;

    iget-object v3, v3, Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-static {v3}, Lcom/android/settings/NavigationBarSettingsGuide;->access$100(Lcom/android/settings/NavigationBarSettingsGuide;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v0

    if-ne v2, v3, :cond_1

    .line 453
    const/4 v1, 0x1

    .line 455
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter$1;->this$1:Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter;

    iget-object v2, v2, Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-static {v2, v1}, Lcom/android/settings/NavigationBarSettingsGuide;->access$002(Lcom/android/settings/NavigationBarSettingsGuide;I)I

    .line 457
    iget-object v2, p0, Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter$1;->this$1:Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter;

    iget-object v2, v2, Lcom/android/settings/NavigationBarSettingsGuide$CustomPagerAdapter;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-static {v2}, Lcom/android/settings/NavigationBarSettingsGuide;->access$400(Lcom/android/settings/NavigationBarSettingsGuide;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 461
    .end local v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_1

    .line 459
    :catch_0
    move-exception v1

    .line 460
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 462
    .end local v1
    :goto_1
    return v0
.end method

.method public endOneLoop(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mAnimTagObj"    # Ljava/lang/String;

    .line 439
    const/4 v0, 0x0

    return v0
.end method
