.class public Lcom/android/settings/RestrictedRadioButton;
.super Landroid/widget/RadioButton;
.source "RestrictedRadioButton.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisabledByAdmin:Z

.field private mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/RestrictedRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 41
    const v0, 0x101007e

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/RestrictedRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/RestrictedRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 51
    iput-object p1, p0, Lcom/android/settings/RestrictedRadioButton;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method


# virtual methods
.method public isDisabledByAdmin()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/android/settings/RestrictedRadioButton;->mDisabledByAdmin:Z

    return v0
.end method

.method public performClick()Z
    .locals 2

    .line 56
    iget-boolean v0, p0, Lcom/android/settings/RestrictedRadioButton;->mDisabledByAdmin:Z

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/settings/RestrictedRadioButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/RestrictedRadioButton;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 58
    const/4 v0, 0x1

    return v0

    .line 60
    :cond_0
    invoke-super {p0}, Landroid/widget/RadioButton;->performClick()Z

    move-result v0

    return v0
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 4
    .param p1, "admin"    # Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 64
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 65
    .local v0, "disabled":Z
    :goto_0
    iput-object p1, p0, Lcom/android/settings/RestrictedRadioButton;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 66
    iget-boolean v1, p0, Lcom/android/settings/RestrictedRadioButton;->mDisabledByAdmin:Z

    if-eq v1, v0, :cond_2

    .line 67
    iput-boolean v0, p0, Lcom/android/settings/RestrictedRadioButton;->mDisabledByAdmin:Z

    .line 68
    iget-object v1, p0, Lcom/android/settings/RestrictedRadioButton;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/android/settings/RestrictedRadioButton;->mDisabledByAdmin:Z

    invoke-static {v1, p0, v2}, Lcom/android/settingslib/RestrictedLockUtils;->setTextViewAsDisabledByAdmin(Landroid/content/Context;Landroid/widget/TextView;Z)V

    .line 70
    iget-boolean v1, p0, Lcom/android/settings/RestrictedRadioButton;->mDisabledByAdmin:Z

    if-eqz v1, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/RestrictedRadioButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/RestrictedRadioButton;->mContext:Landroid/content/Context;

    const v3, 0x7f06005f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/RestrictedRadioButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 77
    :cond_2
    :goto_1
    return-void
.end method
