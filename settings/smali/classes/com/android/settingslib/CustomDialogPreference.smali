.class public Lcom/android/settingslib/CustomDialogPreference;
.super Landroid/support/v7/preference/DialogPreference;
.source "CustomDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;
    }
.end annotation


# instance fields
.field private mFragment:Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;

.field private mOnShowListener:Landroid/content/DialogInterface$OnShowListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    invoke-direct {p0, p1}, Landroid/support/v7/preference/DialogPreference;-><init>(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/android/settingslib/CustomDialogPreference;Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settingslib/CustomDialogPreference;
    .param p1, "x1"    # Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;

    .line 28
    invoke-direct {p0, p1}, Lcom/android/settingslib/CustomDialogPreference;->setFragment(Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settingslib/CustomDialogPreference;)Landroid/content/DialogInterface$OnShowListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settingslib/CustomDialogPreference;

    .line 28
    invoke-direct {p0}, Lcom/android/settingslib/CustomDialogPreference;->getOnShowListener()Landroid/content/DialogInterface$OnShowListener;

    move-result-object v0

    return-object v0
.end method

.method private getOnShowListener()Landroid/content/DialogInterface$OnShowListener;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/settingslib/CustomDialogPreference;->mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

    return-object v0
.end method

.method private setFragment(Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;

    .line 76
    iput-object p1, p0, Lcom/android/settingslib/CustomDialogPreference;->mFragment:Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;

    .line 77
    return-void
.end method


# virtual methods
.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/android/settingslib/CustomDialogPreference;->mFragment:Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/CustomDialogPreference;->mFragment:Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;

    invoke-virtual {v0}, Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 73
    return-void
.end method

.method protected onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 70
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 0
    .param p1, "positiveResult"    # Z

    .line 67
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 64
    return-void
.end method
