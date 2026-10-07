.class public Lcom/android/settings/applications/LayoutPreference;
.super Landroid/support/v7/preference/Preference;
.source "LayoutPreference.java"


# instance fields
.field private mAllowDividerAbove:Z

.field private mAllowDividerBelow:Z

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/LayoutPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v0, Lcom/android/settings/applications/-$$Lambda$LayoutPreference$-oL9WiG-H2u60jStTsEh5xi7a7Q;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/-$$Lambda$LayoutPreference$-oL9WiG-H2u60jStTsEh5xi7a7Q;-><init>(Lcom/android/settings/applications/LayoutPreference;)V

    iput-object v0, p0, Lcom/android/settings/applications/LayoutPreference;->mClickListener:Landroid/view/View$OnClickListener;

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/applications/LayoutPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance v0, Lcom/android/settings/applications/-$$Lambda$LayoutPreference$-oL9WiG-H2u60jStTsEh5xi7a7Q;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/-$$Lambda$LayoutPreference$-oL9WiG-H2u60jStTsEh5xi7a7Q;-><init>(Lcom/android/settings/applications/LayoutPreference;)V

    iput-object v0, p0, Lcom/android/settings/applications/LayoutPreference;->mClickListener:Landroid/view/View$OnClickListener;

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/applications/LayoutPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;

    .line 58
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v0, Lcom/android/settings/applications/-$$Lambda$LayoutPreference$-oL9WiG-H2u60jStTsEh5xi7a7Q;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/-$$Lambda$LayoutPreference$-oL9WiG-H2u60jStTsEh5xi7a7Q;-><init>(Lcom/android/settings/applications/LayoutPreference;)V

    iput-object v0, p0, Lcom/android/settings/applications/LayoutPreference;->mClickListener:Landroid/view/View$OnClickListener;

    .line 59
    invoke-direct {p0, p2}, Lcom/android/settings/applications/LayoutPreference;->setView(Landroid/view/View;)V

    .line 60
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 63
    sget-object v0, Lcom/android/settings/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-static {v0, v1, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/applications/LayoutPreference;->mAllowDividerAbove:Z

    .line 66
    const/16 v1, 0x11

    invoke-static {v0, v1, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/applications/LayoutPreference;->mAllowDividerBelow:Z

    .line 68
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    sget-object v1, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 72
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 74
    .local v1, "layoutResource":I
    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/applications/LayoutPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    .line 81
    invoke-virtual {v3, v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 82
    .local v2, "view":Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/android/settings/applications/LayoutPreference;->setView(Landroid/view/View;)V

    .line 83
    return-void

    .line 75
    .end local v2
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "LayoutPreference requires a layout to be defined"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static synthetic lambda$new$0(Lcom/android/settings/applications/LayoutPreference;Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/LayoutPreference;->performClick(Landroid/view/View;)V

    return-void
.end method

.method private setView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 86
    const v0, 0x7f0d00cb

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/LayoutPreference;->setLayoutResource(I)V

    .line 87
    const v0, 0x7f0a0048

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 88
    .local v0, "allDetails":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 89
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->forceCustomPadding(Landroid/view/View;Z)V

    .line 91
    :cond_0
    iput-object p1, p0, Lcom/android/settings/applications/LayoutPreference;->mRootView:Landroid/view/View;

    .line 92
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/LayoutPreference;->setShouldDisableView(Z)V

    .line 93
    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/android/settings/applications/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 97
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/applications/LayoutPreference;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/applications/LayoutPreference;->isSelectable()Z

    move-result v0

    .line 100
    .local v0, "selectable":Z
    iget-object v1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 101
    iget-object v1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 102
    iget-boolean v1, p0, Lcom/android/settings/applications/LayoutPreference;->mAllowDividerAbove:Z

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 103
    iget-boolean v1, p0, Lcom/android/settings/applications/LayoutPreference;->mAllowDividerBelow:Z

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 105
    iget-object v1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Landroid/widget/FrameLayout;

    .line 106
    .local v1, "layout":Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 107
    iget-object v2, p0, Lcom/android/settings/applications/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 108
    .local v2, "parent":Landroid/view/ViewGroup;
    if-eqz v2, :cond_0

    .line 109
    iget-object v3, p0, Lcom/android/settings/applications/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 111
    :cond_0
    iget-object v3, p0, Lcom/android/settings/applications/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 112
    return-void
.end method
