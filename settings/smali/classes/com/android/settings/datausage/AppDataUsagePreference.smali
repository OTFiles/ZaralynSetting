.class public Lcom/android/settings/datausage/AppDataUsagePreference;
.super Lcom/android/settings/widget/AppPreference;
.source "AppDataUsagePreference.java"


# instance fields
.field private mDetail:Lcom/android/settingslib/net/UidDetail;

.field private final mItem:Lcom/android/settingslib/AppItem;

.field private final mPercent:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/AppItem;ILcom/android/settingslib/net/UidDetailProvider;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/android/settingslib/AppItem;
    .param p3, "percent"    # I
    .param p4, "provider"    # Lcom/android/settingslib/net/UidDetailProvider;

    .line 36
    invoke-direct {p0, p1}, Lcom/android/settings/widget/AppPreference;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p2, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mItem:Lcom/android/settingslib/AppItem;

    .line 38
    iput p3, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mPercent:I

    .line 40
    iget-boolean v0, p2, Lcom/android/settingslib/AppItem;->restricted:Z

    if-eqz v0, :cond_0

    iget-wide v0, p2, Lcom/android/settingslib/AppItem;->total:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 41
    const v0, 0x7f12046d

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/AppDataUsagePreference;->setSummary(I)V

    goto :goto_0

    .line 43
    :cond_0
    iget-wide v0, p2, Lcom/android/settingslib/AppItem;->total:J

    invoke-static {p1, v0, v1}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/AppDataUsagePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 45
    :goto_0
    iget v0, p2, Lcom/android/settingslib/AppItem;->key:I

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Lcom/android/settingslib/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settingslib/net/UidDetail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mDetail:Lcom/android/settingslib/net/UidDetail;

    .line 46
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mDetail:Lcom/android/settingslib/net/UidDetail;

    if-eqz v0, :cond_1

    .line 47
    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsagePreference;->setAppInfo()V

    goto :goto_1

    .line 49
    :cond_1
    new-instance v0, Lcom/android/settings/datausage/-$$Lambda$AppDataUsagePreference$1CecIqCNArEHKTwkPb92cZEWQPk;

    invoke-direct {v0, p0, p4}, Lcom/android/settings/datausage/-$$Lambda$AppDataUsagePreference$1CecIqCNArEHKTwkPb92cZEWQPk;-><init>(Lcom/android/settings/datausage/AppDataUsagePreference;Lcom/android/settingslib/net/UidDetailProvider;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 54
    :goto_1
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/settings/datausage/AppDataUsagePreference;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsagePreference;->setAppInfo()V

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/settings/datausage/AppDataUsagePreference;Lcom/android/settingslib/net/UidDetailProvider;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/settingslib/net/UidDetailProvider;

    .line 50
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mItem:Lcom/android/settingslib/AppItem;

    iget v0, v0, Lcom/android/settingslib/AppItem;->key:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/settingslib/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settingslib/net/UidDetail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mDetail:Lcom/android/settingslib/net/UidDetail;

    .line 51
    new-instance v0, Lcom/android/settings/datausage/-$$Lambda$AppDataUsagePreference$xD2zZCrk9HJ-DejIPEhSoFp3K8o;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/-$$Lambda$AppDataUsagePreference$xD2zZCrk9HJ-DejIPEhSoFp3K8o;-><init>(Lcom/android/settings/datausage/AppDataUsagePreference;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 52
    return-void
.end method

.method private setAppInfo()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mDetail:Lcom/android/settingslib/net/UidDetail;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mDetail:Lcom/android/settingslib/net/UidDetail;

    iget-object v0, v0, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/AppDataUsagePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 73
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mDetail:Lcom/android/settingslib/net/UidDetail;

    iget-object v0, v0, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/AppDataUsagePreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 75
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/AppDataUsagePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 76
    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/AppDataUsagePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 78
    :goto_0
    return-void
.end method


# virtual methods
.method public getItem()Lcom/android/settingslib/AppItem;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mItem:Lcom/android/settingslib/AppItem;

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 5
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/widget/AppPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 59
    const v0, 0x102000d

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 62
    .local v0, "progress":Landroid/widget/ProgressBar;
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mItem:Lcom/android/settingslib/AppItem;

    iget-boolean v1, v1, Lcom/android/settingslib/AppItem;->restricted:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mItem:Lcom/android/settingslib/AppItem;

    iget-wide v1, v1, Lcom/android/settingslib/AppItem;->total:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 63
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 65
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 67
    :goto_0
    iget v1, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mPercent:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 68
    return-void
.end method
