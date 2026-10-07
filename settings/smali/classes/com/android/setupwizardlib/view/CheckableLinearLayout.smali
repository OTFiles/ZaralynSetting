.class public Lcom/android/setupwizardlib/view/CheckableLinearLayout;
.super Landroid/widget/LinearLayout;
.source "CheckableLinearLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private mChecked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->mChecked:Z

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->setFocusable(Z)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->mChecked:Z

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->setFocusable(Z)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->mChecked:Z

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->setFocusable(Z)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->mChecked:Z

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->setFocusable(Z)V

    .line 59
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->mChecked:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 4
    .param p1, "extraSpace"    # I

    .line 67
    iget-boolean v0, p0, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->mChecked:Z

    if-eqz v0, :cond_0

    .line 68
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 69
    .local v0, "superStates":[I
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x10100a0

    aput v3, v1, v2

    .line 70
    .local v1, "checked":[I
    invoke-static {v0, v1}, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->mergeDrawableStates([I[I)[I

    move-result-object v2

    return-object v2

    .line 72
    .end local v0
    .end local v1
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    return-object v0
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .line 78
    iput-boolean p1, p0, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->mChecked:Z

    .line 79
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->refreshDrawableState()V

    .line 80
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->setChecked(Z)V

    .line 90
    return-void
.end method
