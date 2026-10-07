.class Lcom/android/settings/CustomListPreference$ConfirmDialogFragment$1;
.super Ljava/lang/Object;
.source "CustomListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/CustomListPreference$ConfirmDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CustomListPreference$ConfirmDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/CustomListPreference$ConfirmDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/CustomListPreference$ConfirmDialogFragment;

    .line 206
    iput-object p1, p0, Lcom/android/settings/CustomListPreference$ConfirmDialogFragment$1;->this$0:Lcom/android/settings/CustomListPreference$ConfirmDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 209
    iget-object v0, p0, Lcom/android/settings/CustomListPreference$ConfirmDialogFragment$1;->this$0:Lcom/android/settings/CustomListPreference$ConfirmDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/CustomListPreference$ConfirmDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 210
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 211
    move-object v1, v0

    check-cast v1, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;

    invoke-virtual {v1}, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->onItemConfirmed()V

    .line 213
    :cond_0
    return-void
.end method
