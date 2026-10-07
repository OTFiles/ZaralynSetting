.class Lcom/android/settingslib/notification/ZenDurationDialog$1;
.super Ljava/lang/Object;
.source "ZenDurationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/notification/ZenDurationDialog;->createDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/notification/ZenDurationDialog;

.field final synthetic val$zenDuration:I


# direct methods
.method constructor <init>(Lcom/android/settingslib/notification/ZenDurationDialog;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settingslib/notification/ZenDurationDialog;

    .line 77
    iput-object p1, p0, Lcom/android/settingslib/notification/ZenDurationDialog$1;->this$0:Lcom/android/settingslib/notification/ZenDurationDialog;

    iput p2, p0, Lcom/android/settingslib/notification/ZenDurationDialog$1;->val$zenDuration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 80
    iget-object v0, p0, Lcom/android/settingslib/notification/ZenDurationDialog$1;->this$0:Lcom/android/settingslib/notification/ZenDurationDialog;

    iget v1, p0, Lcom/android/settingslib/notification/ZenDurationDialog$1;->val$zenDuration:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/notification/ZenDurationDialog;->updateZenDuration(I)V

    .line 81
    return-void
.end method
