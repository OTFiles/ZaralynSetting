.class public final Lcom/android/settings/widget/RtlCompatibleViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "RtlCompatibleViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/RtlCompatibleViewPager$RtlSavedState;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/RtlCompatibleViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method


# virtual methods
.method public getCurrentItem()I
    .locals 1

    .line 51
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/RtlCompatibleViewPager;->getRtlAwareIndex(I)I

    move-result v0

    return v0
.end method

.method public getRtlAwareIndex(I)I
    .locals 2
    .param p1, "index"    # I

    .line 86
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/widget/RtlCompatibleViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    sub-int/2addr v0, v1

    return v0

    .line 90
    :cond_0
    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 70
    move-object v0, p1

    check-cast v0, Lcom/android/settings/widget/RtlCompatibleViewPager$RtlSavedState;

    .line 71
    .local v0, "rtlSavedState":Lcom/android/settings/widget/RtlCompatibleViewPager$RtlSavedState;
    invoke-virtual {v0}, Lcom/android/settings/widget/RtlCompatibleViewPager$RtlSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/support/v4/view/ViewPager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 73
    iget v1, v0, Lcom/android/settings/widget/RtlCompatibleViewPager$RtlSavedState;->position:I

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/RtlCompatibleViewPager;->setCurrentItem(I)V

    .line 74
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 61
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 63
    .local v0, "parcelable":Landroid/os/Parcelable;
    new-instance v1, Lcom/android/settings/widget/RtlCompatibleViewPager$RtlSavedState;

    invoke-direct {v1, v0}, Lcom/android/settings/widget/RtlCompatibleViewPager$RtlSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 64
    .local v1, "rtlSavedState":Lcom/android/settings/widget/RtlCompatibleViewPager$RtlSavedState;
    invoke-virtual {p0}, Lcom/android/settings/widget/RtlCompatibleViewPager;->getCurrentItem()I

    move-result v2

    iput v2, v1, Lcom/android/settings/widget/RtlCompatibleViewPager$RtlSavedState;->position:I

    .line 65
    return-object v1
.end method

.method public setCurrentItem(I)V
    .locals 1
    .param p1, "item"    # I

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/RtlCompatibleViewPager;->getRtlAwareIndex(I)I

    move-result v0

    invoke-super {p0, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 57
    return-void
.end method
