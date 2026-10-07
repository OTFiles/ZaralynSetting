.class public Lcom/android/settings/widget/ActionButtonPreference;
.super Landroid/support/v7/preference/Preference;
.source "ActionButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;
    }
.end annotation


# instance fields
.field private final mButton1Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

.field private final mButton2Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v0, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-direct {v0}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton1Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    .line 33
    new-instance v0, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-direct {v0}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton2Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    .line 53
    invoke-direct {p0}, Lcom/android/settings/widget/ActionButtonPreference;->init()V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance v0, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-direct {v0}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton1Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    .line 33
    new-instance v0, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-direct {v0}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton2Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    .line 48
    invoke-direct {p0}, Lcom/android/settings/widget/ActionButtonPreference;->init()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    new-instance v0, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-direct {v0}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton1Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    .line 33
    new-instance v0, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-direct {v0}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton2Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    .line 43
    invoke-direct {p0}, Lcom/android/settings/widget/ActionButtonPreference;->init()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    new-instance v0, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-direct {v0}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton1Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    .line 33
    new-instance v0, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-direct {v0}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton2Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    .line 38
    invoke-direct {p0}, Lcom/android/settings/widget/ActionButtonPreference;->init()V

    .line 39
    return-void
.end method

.method private init()V
    .locals 1

    .line 57
    const v0, 0x7f0d0215

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ActionButtonPreference;->setLayoutResource(I)V

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ActionButtonPreference;->setSelectable(Z)V

    .line 59
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 63
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 65
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 66
    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton1Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    const v1, 0x7f0a00af

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->access$002(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;Landroid/widget/Button;)Landroid/widget/Button;

    .line 67
    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton1Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    const v1, 0x7f0a00ae

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->access$102(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;Landroid/widget/Button;)Landroid/widget/Button;

    .line 68
    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton2Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    const v1, 0x7f0a00b1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->access$002(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;Landroid/widget/Button;)Landroid/widget/Button;

    .line 69
    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton2Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    const v1, 0x7f0a00b0

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->access$102(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;Landroid/widget/Button;)Landroid/widget/Button;

    .line 71
    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton1Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-virtual {v0}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->setUpButton()V

    .line 72
    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton2Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-virtual {v0}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->setUpButton()V

    .line 73
    return-void
.end method

.method public setButton1Enabled(Z)Lcom/android/settings/widget/ActionButtonPreference;
    .locals 1
    .param p1, "isEnabled"    # Z

    .line 85
    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton1Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->access$300(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton1Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->access$302(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;Z)Z

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/widget/ActionButtonPreference;->notifyChanged()V

    .line 89
    :cond_0
    return-object p0
.end method

.method public setButton1OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settings/widget/ActionButtonPreference;
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 110
    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton1Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->access$400(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton1Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->access$402(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/widget/ActionButtonPreference;->notifyChanged()V

    .line 114
    :cond_0
    return-object p0
.end method

.method public setButton1Positive(Z)Lcom/android/settings/widget/ActionButtonPreference;
    .locals 1
    .param p1, "isPositive"    # Z

    .line 126
    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton1Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->access$500(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton1Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->access$502(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;Z)Z

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/widget/ActionButtonPreference;->notifyChanged()V

    .line 130
    :cond_0
    return-object p0
.end method

.method public setButton1Text(I)Lcom/android/settings/widget/ActionButtonPreference;
    .locals 2
    .param p1, "textResId"    # I

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/widget/ActionButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "newText":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton1Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-static {v1}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->access$200(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton1Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-static {v1, v0}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->access$202(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/widget/ActionButtonPreference;->notifyChanged()V

    .line 81
    :cond_0
    return-object p0
.end method

.method public setButton1Visible(Z)Lcom/android/settings/widget/ActionButtonPreference;
    .locals 1
    .param p1, "isPositive"    # Z

    .line 141
    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton1Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->access$600(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton1Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->access$602(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;Z)Z

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/widget/ActionButtonPreference;->notifyChanged()V

    .line 145
    :cond_0
    return-object p0
.end method

.method public setButton2Enabled(Z)Lcom/android/settings/widget/ActionButtonPreference;
    .locals 1
    .param p1, "isEnabled"    # Z

    .line 102
    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton2Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->access$300(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton2Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->access$302(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;Z)Z

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/widget/ActionButtonPreference;->notifyChanged()V

    .line 106
    :cond_0
    return-object p0
.end method

.method public setButton2OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settings/widget/ActionButtonPreference;
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 118
    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton2Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->access$400(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton2Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->access$402(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/widget/ActionButtonPreference;->notifyChanged()V

    .line 122
    :cond_0
    return-object p0
.end method

.method public setButton2Positive(Z)Lcom/android/settings/widget/ActionButtonPreference;
    .locals 1
    .param p1, "isPositive"    # Z

    .line 134
    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton2Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->access$500(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton2Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->access$502(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;Z)Z

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/widget/ActionButtonPreference;->notifyChanged()V

    .line 138
    :cond_0
    return-object p0
.end method

.method public setButton2Text(I)Lcom/android/settings/widget/ActionButtonPreference;
    .locals 2
    .param p1, "textResId"    # I

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/widget/ActionButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "newText":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton2Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-static {v1}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->access$200(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton2Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-static {v1, v0}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->access$202(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/widget/ActionButtonPreference;->notifyChanged()V

    .line 98
    :cond_0
    return-object p0
.end method

.method public setButton2Visible(Z)Lcom/android/settings/widget/ActionButtonPreference;
    .locals 1
    .param p1, "isPositive"    # Z

    .line 149
    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton2Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->access$600(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton2Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->access$602(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;Z)Z

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/widget/ActionButtonPreference;->notifyChanged()V

    .line 153
    :cond_0
    return-object p0
.end method
