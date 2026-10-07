.class public Lcom/android/settings/widget/SeekBarPreference;
.super Lcom/android/settingslib/RestrictedPreference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/SeekBarPreference$SavedState;
    }
.end annotation


# instance fields
.field private mAccessibilityRangeInfoType:I

.field private mContinuousUpdates:Z

.field private mDefaultProgress:I

.field private mMax:I

.field private mMin:I

.field private mProgress:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekBarContentDescription:Ljava/lang/CharSequence;

.field private mShouldBlink:Z

.field private mTrackingTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 82
    const v0, 0x7f04013f

    const v1, 0x11100bc

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mDefaultProgress:I

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mAccessibilityRangeInfoType:I

    .line 59
    sget-object v1, Lcom/android/internal/R$styleable;->ProgressBar:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 61
    .local v1, "a":Landroid/content/res/TypedArray;
    iget v2, p0, Lcom/android/settings/widget/SeekBarPreference;->mMax:I

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings/widget/SeekBarPreference;->setMax(I)V

    .line 62
    iget v2, p0, Lcom/android/settings/widget/SeekBarPreference;->mMin:I

    const/16 v3, 0x1a

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings/widget/SeekBarPreference;->setMin(I)V

    .line 63
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    sget-object v2, Lcom/android/internal/R$styleable;->SeekBarPreference:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 67
    const v2, 0x10900cb

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 70
    .local v0, "layoutResId":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SeekBarPreference;->setLayoutResource(I)V

    .line 74
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/widget/SeekBarPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/SeekBarPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/widget/SeekBarPreference;

    .line 39
    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mAccessibilityRangeInfoType:I

    return v0
.end method

.method public static synthetic lambda$onBindViewHolder$0(Lcom/android/settings/widget/SeekBarPreference;Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 121
    .local v0, "centerX":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 122
    .local v1, "centerY":I
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 124
    .end local v0
    .end local v1
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 125
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 126
    iput-boolean v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mShouldBlink:Z

    .line 127
    return-void
.end method

.method private setProgress(IZ)V
    .locals 1
    .param p1, "progress"    # I
    .param p2, "notifyChanged"    # Z

    .line 221
    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mMax:I

    if-le p1, v0, :cond_0

    .line 222
    iget p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mMax:I

    .line 224
    :cond_0
    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mMin:I

    if-ge p1, v0, :cond_1

    .line 225
    iget p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mMin:I

    .line 227
    :cond_1
    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    if-eq p1, v0, :cond_2

    .line 228
    iput p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    .line 229
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->persistInt(I)Z

    .line 230
    if-eqz p2, :cond_2

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/widget/SeekBarPreference;->notifyChanged()V

    .line 234
    :cond_2
    return-void
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .line 188
    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mMax:I

    return v0
.end method

.method public getMin()I
    .locals 1

    .line 192
    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mMin:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 237
    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 98
    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 99
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 100
    const v0, 0x10203dc

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 102
    iget-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 103
    iget-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mMax:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mMin:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMin(I)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 106
    iget-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/android/settings/widget/SeekBarPreference;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/widget/SeekBarPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 108
    .local v0, "title":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBarContentDescription:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBarContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 110
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 113
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    instance-of v1, v1, Lcom/android/settings/widget/DefaultIndicatorSeekBar;

    if-eqz v1, :cond_2

    .line 114
    iget-object v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    check-cast v1, Lcom/android/settings/widget/DefaultIndicatorSeekBar;

    iget v2, p0, Lcom/android/settings/widget/SeekBarPreference;->mDefaultProgress:I

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->setDefaultProgress(I)V

    .line 116
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mShouldBlink:Z

    if-eqz v1, :cond_3

    .line 117
    iget-object v1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    .line 118
    .local v1, "v":Landroid/view/View;
    new-instance v2, Lcom/android/settings/widget/-$$Lambda$SeekBarPreference$dLBfCJMqk38mmQ3tQY-pIyDA0S8;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/widget/-$$Lambda$SeekBarPreference$dLBfCJMqk38mmQ3tQY-pIyDA0S8;-><init>(Lcom/android/settings/widget/SeekBarPreference;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 129
    .end local v1
    :cond_3
    iget-object v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/android/settings/widget/SeekBarPreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings/widget/SeekBarPreference$1;-><init>(Lcom/android/settings/widget/SeekBarPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 142
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .line 157
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 162
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 163
    return v1

    .line 166
    :cond_0
    const v0, 0x10203dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 167
    .local v0, "seekBar":Landroid/widget/SeekBar;
    if-nez v0, :cond_1

    .line 168
    return v1

    .line 170
    :cond_1
    invoke-virtual {v0, p2, p3}, Landroid/widget/SeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .line 257
    if-eqz p3, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mContinuousUpdates:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mTrackingTouch:Z

    if-nez v0, :cond_1

    .line 258
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    .line 260
    :cond_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 317
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/settings/widget/SeekBarPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 320
    return-void

    .line 324
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/settings/widget/SeekBarPreference$SavedState;

    .line 325
    .local v0, "myState":Lcom/android/settings/widget/SeekBarPreference$SavedState;
    invoke-virtual {v0}, Lcom/android/settings/widget/SeekBarPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/android/settingslib/RestrictedPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 326
    iget v1, v0, Lcom/android/settings/widget/SeekBarPreference$SavedState;->progress:I

    iput v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    .line 327
    iget v1, v0, Lcom/android/settings/widget/SeekBarPreference$SavedState;->max:I

    iput v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mMax:I

    .line 328
    iget v1, v0, Lcom/android/settings/widget/SeekBarPreference$SavedState;->min:I

    iput v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mMin:I

    .line 329
    invoke-virtual {p0}, Lcom/android/settings/widget/SeekBarPreference;->notifyChanged()V

    .line 330
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 301
    invoke-super {p0}, Lcom/android/settingslib/RestrictedPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 302
    .local v0, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/settings/widget/SeekBarPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    return-object v0

    .line 308
    :cond_0
    new-instance v1, Lcom/android/settings/widget/SeekBarPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/android/settings/widget/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 309
    .local v1, "myState":Lcom/android/settings/widget/SeekBarPreference$SavedState;
    iget v2, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    iput v2, v1, Lcom/android/settings/widget/SeekBarPreference$SavedState;->progress:I

    .line 310
    iget v2, p0, Lcom/android/settings/widget/SeekBarPreference;->mMax:I

    iput v2, v1, Lcom/android/settings/widget/SeekBarPreference$SavedState;->max:I

    .line 311
    iget v2, p0, Lcom/android/settings/widget/SeekBarPreference;->mMin:I

    iput v2, v1, Lcom/android/settings/widget/SeekBarPreference$SavedState;->min:I

    .line 312
    return-object v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .line 151
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SeekBarPreference;->getPersistedInt(I)I

    move-result v0

    goto :goto_0

    .line 152
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 151
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    .line 153
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mTrackingTouch:Z

    .line 265
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mTrackingTouch:Z

    .line 270
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 271
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    .line 273
    :cond_0
    return-void
.end method

.method public setAccessibilityRangeInfoType(I)V
    .locals 0
    .param p1, "rangeInfoType"    # I

    .line 283
    iput p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mAccessibilityRangeInfoType:I

    .line 284
    return-void
.end method

.method public setContinuousUpdates(Z)V
    .locals 0
    .param p1, "continuousUpdates"    # Z

    .line 217
    iput-boolean p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mContinuousUpdates:Z

    .line 218
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .line 174
    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mMax:I

    if-eq p1, v0, :cond_0

    .line 175
    iput p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mMax:I

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/widget/SeekBarPreference;->notifyChanged()V

    .line 178
    :cond_0
    return-void
.end method

.method public setMin(I)V
    .locals 1
    .param p1, "min"    # I

    .line 181
    iget v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mMin:I

    if-eq p1, v0, :cond_0

    .line 182
    iput p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mMin:I

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/widget/SeekBarPreference;->notifyChanged()V

    .line 185
    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .line 196
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(IZ)V

    .line 197
    return-void
.end method

.method public setSeekBarContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .line 287
    iput-object p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBarContentDescription:Ljava/lang/CharSequence;

    .line 288
    iget-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 291
    :cond_0
    return-void
.end method

.method syncProgress(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 245
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 246
    .local v0, "progress":I
    iget v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_1

    .line 247
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(IZ)V

    goto :goto_0

    .line 250
    :cond_0
    iget v1, p0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 253
    :cond_1
    :goto_0
    return-void
.end method
