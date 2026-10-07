.class Lcom/android/settings/accounts/RemoveUserFragment$1;
.super Ljava/lang/Object;
.source "RemoveUserFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/RemoveUserFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/RemoveUserFragment;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/RemoveUserFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/accounts/RemoveUserFragment;

    .line 44
    iput-object p1, p0, Lcom/android/settings/accounts/RemoveUserFragment$1;->this$0:Lcom/android/settings/accounts/RemoveUserFragment;

    iput p2, p0, Lcom/android/settings/accounts/RemoveUserFragment$1;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 47
    iget-object v0, p0, Lcom/android/settings/accounts/RemoveUserFragment$1;->this$0:Lcom/android/settings/accounts/RemoveUserFragment;

    .line 48
    invoke-virtual {v0}, Lcom/android/settings/accounts/RemoveUserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 49
    .local v0, "um":Landroid/os/UserManager;
    iget v1, p0, Lcom/android/settings/accounts/RemoveUserFragment$1;->val$userId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->removeUser(I)Z

    .line 50
    return-void
.end method
