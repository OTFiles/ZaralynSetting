.class Lcom/readboy/store/dialogs/BaseDialog$DialogOnKeyListener;
.super Ljava/lang/Object;
.source "BaseDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/readboy/store/dialogs/BaseDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DialogOnKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/readboy/store/dialogs/BaseDialog;


# direct methods
.method constructor <init>(Lcom/readboy/store/dialogs/BaseDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/readboy/store/dialogs/BaseDialog;

    .line 70
    iput-object p1, p0, Lcom/readboy/store/dialogs/BaseDialog$DialogOnKeyListener;->this$0:Lcom/readboy/store/dialogs/BaseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 75
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 76
    const/4 v0, 0x1

    return v0

    .line 78
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
