.class public Lcom/android/settings/custom/RbyNoShareSearchEditText;
.super Landroid/support/v7/widget/AppCompatEditText;
.source "RbyNoShareSearchEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/custom/RbyNoShareSearchEditText$NoCopyCutShareAction;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/custom/RbyNoShareSearchEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 28
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/custom/RbyNoShareSearchEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0}, Lcom/android/settings/custom/RbyNoShareSearchEditText;->setCustomActionModeCallback()V

    .line 34
    return-void
.end method

.method private setCustomActionModeCallback()V
    .locals 2

    .line 40
    new-instance v0, Lcom/android/settings/custom/RbyNoShareSearchEditText$NoCopyCutShareAction;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/custom/RbyNoShareSearchEditText$NoCopyCutShareAction;-><init>(Lcom/android/settings/custom/RbyNoShareSearchEditText$1;)V

    invoke-super {p0, v0}, Landroid/support/v7/widget/AppCompatEditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 41
    return-void
.end method


# virtual methods
.method public onTextContextMenuItem(I)Z
    .locals 1
    .param p1, "id"    # I

    .line 131
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatEditText;->onTextContextMenuItem(I)Z

    move-result v0

    return v0
.end method
