.class public Lcom/android/settings/widget/DisabledCheckBoxPreference;
.super Landroid/support/v7/preference/CheckBoxPreference;
.source "DisabledCheckBoxPreference.java"


# instance fields
.field private mCheckBox:Landroid/view/View;

.field private mEnabledCheckBox:Z

.field private mViewHolder:Landroid/support/v7/preference/PreferenceViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    invoke-direct {p0, p1}, Landroid/support/v7/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v0}, Lcom/android/settings/widget/DisabledCheckBoxPreference;->setupDisabledCheckBoxPreference(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/settings/widget/DisabledCheckBoxPreference;->setupDisabledCheckBoxPreference(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/widget/DisabledCheckBoxPreference;->setupDisabledCheckBoxPreference(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/widget/DisabledCheckBoxPreference;->setupDisabledCheckBoxPreference(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    return-void
.end method

.method private setupDisabledCheckBoxPreference(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 58
    sget-object v0, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 60
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 61
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 62
    .local v3, "attr":I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .end local v3
    goto :goto_1

    .line 64
    .restart local v3
    :cond_0
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->mEnabledCheckBox:Z

    .line 60
    .end local v3
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 68
    .end local v1
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    invoke-super {p0, v2}, Landroid/support/v7/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 73
    iget-boolean v1, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->mEnabledCheckBox:Z

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/DisabledCheckBoxPreference;->enableCheckbox(Z)V

    .line 74
    return-void
.end method


# virtual methods
.method public enableCheckbox(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 77
    iput-boolean p1, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->mEnabledCheckBox:Z

    .line 78
    iget-object v0, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->mViewHolder:Landroid/support/v7/preference/PreferenceViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->mCheckBox:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->mCheckBox:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->mEnabledCheckBox:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 80
    iget-object v0, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->mViewHolder:Landroid/support/v7/preference/PreferenceViewHolder;

    iget-object v0, v0, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->mEnabledCheckBox:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 82
    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 86
    invoke-super {p0, p1}, Landroid/support/v7/preference/CheckBoxPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 87
    iput-object p1, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->mViewHolder:Landroid/support/v7/preference/PreferenceViewHolder;

    .line 88
    const v0, 0x1020001

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->mCheckBox:Landroid/view/View;

    .line 90
    iget-boolean v0, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->mEnabledCheckBox:Z

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/DisabledCheckBoxPreference;->enableCheckbox(Z)V

    .line 91
    return-void
.end method

.method protected performClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 96
    iget-boolean v0, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->mEnabledCheckBox:Z

    if-eqz v0, :cond_0

    .line 97
    invoke-super {p0, p1}, Landroid/support/v7/preference/CheckBoxPreference;->performClick(Landroid/view/View;)V

    .line 99
    :cond_0
    return-void
.end method
