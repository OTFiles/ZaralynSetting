.class public Lcom/android/settings/CMSeekBarPreference;
.super Lcom/android/settings/widget/SeekBarPreference;
.source "CMSeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CMSeekBarPreference$Callback;
    }
.end annotation


# instance fields
.field private btnResetColorTemp:Landroid/widget/Button;

.field private mCallback:Lcom/android/settings/CMSeekBarPreference$Callback;

.field private mEnableAction:Z

.field private mIconResId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mMuteIconResId:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSuppressionText:Ljava/lang/String;

.field private mSuppressionTextView:Landroid/widget/TextView;

.field private resetColorTemp:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/CMSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/CMSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/CMSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/CMSeekBarPreference;->mEnableAction:Z

    .line 133
    new-instance v0, Lcom/android/settings/CMSeekBarPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/CMSeekBarPreference$1;-><init>(Lcom/android/settings/CMSeekBarPreference;)V

    iput-object v0, p0, Lcom/android/settings/CMSeekBarPreference;->resetColorTemp:Landroid/view/View$OnClickListener;

    .line 58
    const v0, 0x7f0d00cf

    invoke-virtual {p0, v0}, Lcom/android/settings/CMSeekBarPreference;->setLayoutResource(I)V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/CMSeekBarPreference;)Lcom/android/settings/CMSeekBarPreference$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CMSeekBarPreference;

    .line 41
    iget-object v0, p0, Lcom/android/settings/CMSeekBarPreference;->mCallback:Lcom/android/settings/CMSeekBarPreference$Callback;

    return-object v0
.end method

.method private init()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/settings/CMSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v0, :cond_0

    return-void

    .line 100
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/CMSeekBarPreference;->updateIconView()V

    .line 101
    invoke-direct {p0}, Lcom/android/settings/CMSeekBarPreference;->updateSuppressionText()V

    .line 102
    return-void
.end method

.method private updateIconView()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/android/settings/CMSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 122
    :cond_0
    iget v0, p0, Lcom/android/settings/CMSeekBarPreference;->mIconResId:I

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/android/settings/CMSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings/CMSeekBarPreference;->mIconResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 124
    :cond_1
    iget v0, p0, Lcom/android/settings/CMSeekBarPreference;->mMuteIconResId:I

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/android/settings/CMSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings/CMSeekBarPreference;->mMuteIconResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/android/settings/CMSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/CMSeekBarPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    :goto_0
    iget-object v0, p0, Lcom/android/settings/CMSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/CMSeekBarPreference;->resetColorTemp:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/CMSeekBarPreference;->btnResetColorTemp:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/CMSeekBarPreference;->resetColorTemp:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    return-void
.end method

.method private updateSuppressionText()V
    .locals 5

    .line 163
    iget-object v0, p0, Lcom/android/settings/CMSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/CMSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/android/settings/CMSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/CMSeekBarPreference;->mSuppressionText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p0, Lcom/android/settings/CMSeekBarPreference;->mSuppressionText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 166
    .local v0, "showSuppression":Z
    iget-object v1, p0, Lcom/android/settings/CMSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    iget-object v1, p0, Lcom/android/settings/CMSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 169
    .end local v0
    :cond_2
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 89
    invoke-super {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 90
    const v0, 0x10203dc

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settings/CMSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 91
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/CMSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    .line 92
    const v0, 0x7f0a041a

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/CMSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    .line 93
    const v0, 0x7f0a00a3

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/CMSeekBarPreference;->btnResetColorTemp:Landroid/widget/Button;

    .line 95
    invoke-direct {p0}, Lcom/android/settings/CMSeekBarPreference;->init()V

    .line 96
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .line 107
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/widget/SeekBarPreference;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 108
    iget-boolean v0, p0, Lcom/android/settings/CMSeekBarPreference;->mEnableAction:Z

    if-nez v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/CMSeekBarPreference;->getProgress()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/CMSeekBarPreference;->mEnableAction:Z

    .line 113
    :cond_0
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p0, Lcom/android/settings/CMSeekBarPreference;->mEnableAction:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "=mEnableAction=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "=====divhee==========onProgressChanged======"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p2, -0x64

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/android/settings/CMSeekBarPreference;->mCallback:Lcom/android/settings/CMSeekBarPreference$Callback;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/CMSeekBarPreference;->mEnableAction:Z

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/android/settings/CMSeekBarPreference;->mCallback:Lcom/android/settings/CMSeekBarPreference$Callback;

    invoke-interface {v0, p2}, Lcom/android/settings/CMSeekBarPreference$Callback;->onCMValueChanged(I)V

    .line 117
    :cond_1
    return-void
.end method

.method public setCallback(Lcom/android/settings/CMSeekBarPreference$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/settings/CMSeekBarPreference$Callback;

    .line 74
    iput-object p1, p0, Lcom/android/settings/CMSeekBarPreference;->mCallback:Lcom/android/settings/CMSeekBarPreference$Callback;

    .line 75
    return-void
.end method
