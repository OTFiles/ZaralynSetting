.class public Lcom/readboy/store/dialogs/BaseDialog;
.super Ljava/lang/Object;
.source "BaseDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/readboy/store/dialogs/BaseDialog$DialogOnKeyListener;,
        Lcom/readboy/store/dialogs/BaseDialog$DialogDismissListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseDialog"


# instance fields
.field private cancelable:Z

.field private dialogView:Landroid/view/View;

.field private dialogViewId:I

.field listener:Lcom/readboy/store/dialogs/BaseDialog$DialogDismissListener;

.field private mContext:Landroid/content/Context;

.field mDialog:Landroid/app/Dialog;

.field private mTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/readboy/store/dialogs/BaseDialog;->dialogView:Landroid/view/View;

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/readboy/store/dialogs/BaseDialog;->cancelable:Z

    .line 26
    iput-object p1, p0, Lcom/readboy/store/dialogs/BaseDialog;->mContext:Landroid/content/Context;

    .line 27
    iput p2, p0, Lcom/readboy/store/dialogs/BaseDialog;->mTheme:I

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "dialogViewId"    # I

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/readboy/store/dialogs/BaseDialog;->dialogView:Landroid/view/View;

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/readboy/store/dialogs/BaseDialog;->cancelable:Z

    .line 31
    iput-object p1, p0, Lcom/readboy/store/dialogs/BaseDialog;->mContext:Landroid/content/Context;

    .line 32
    iput p2, p0, Lcom/readboy/store/dialogs/BaseDialog;->mTheme:I

    .line 33
    iput p3, p0, Lcom/readboy/store/dialogs/BaseDialog;->dialogViewId:I

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "dialogView"    # Landroid/view/View;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/readboy/store/dialogs/BaseDialog;->dialogView:Landroid/view/View;

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/readboy/store/dialogs/BaseDialog;->cancelable:Z

    .line 38
    iput-object p1, p0, Lcom/readboy/store/dialogs/BaseDialog;->mContext:Landroid/content/Context;

    .line 39
    iput p2, p0, Lcom/readboy/store/dialogs/BaseDialog;->mTheme:I

    .line 40
    iput-object p3, p0, Lcom/readboy/store/dialogs/BaseDialog;->dialogView:Landroid/view/View;

    .line 41
    return-void
.end method

.method private init()V
    .locals 3

    .line 44
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/readboy/store/dialogs/BaseDialog;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/readboy/store/dialogs/BaseDialog;->mTheme:I

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/readboy/store/dialogs/BaseDialog;->mDialog:Landroid/app/Dialog;

    .line 46
    iget-object v0, p0, Lcom/readboy/store/dialogs/BaseDialog;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 47
    iget-object v0, p0, Lcom/readboy/store/dialogs/BaseDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/readboy/store/dialogs/BaseDialog;->getDialogView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 48
    iget-boolean v0, p0, Lcom/readboy/store/dialogs/BaseDialog;->cancelable:Z

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/readboy/store/dialogs/BaseDialog;->mDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/readboy/store/dialogs/BaseDialog$DialogOnKeyListener;

    invoke-direct {v1, p0}, Lcom/readboy/store/dialogs/BaseDialog$DialogOnKeyListener;-><init>(Lcom/readboy/store/dialogs/BaseDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/readboy/store/dialogs/BaseDialog;->mDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/readboy/store/dialogs/BaseDialog$1;

    invoke-direct {v1, p0}, Lcom/readboy/store/dialogs/BaseDialog$1;-><init>(Lcom/readboy/store/dialogs/BaseDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 59
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/readboy/store/dialogs/BaseDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/readboy/store/dialogs/BaseDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 143
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/readboy/store/dialogs/BaseDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/readboy/store/dialogs/BaseDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/readboy/store/dialogs/BaseDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 121
    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/readboy/store/dialogs/BaseDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDialogView()Landroid/view/View;
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/readboy/store/dialogs/BaseDialog;->dialogView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 100
    iget v0, p0, Lcom/readboy/store/dialogs/BaseDialog;->dialogViewId:I

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/readboy/store/dialogs/BaseDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/readboy/store/dialogs/BaseDialog;->dialogViewId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/readboy/store/dialogs/BaseDialog;->dialogView:Landroid/view/View;

    goto :goto_0

    .line 103
    :cond_0
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/readboy/store/dialogs/BaseDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/readboy/store/dialogs/BaseDialog;->dialogView:Landroid/view/View;

    .line 107
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/readboy/store/dialogs/BaseDialog;->dialogView:Landroid/view/View;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/readboy/store/dialogs/BaseDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setCancelable(Z)V
    .locals 0
    .param p1, "cancelable"    # Z

    .line 132
    iput-boolean p1, p0, Lcom/readboy/store/dialogs/BaseDialog;->cancelable:Z

    .line 133
    return-void
.end method

.method public setDialogView(Landroid/view/View;)V
    .locals 0
    .param p1, "dialogView"    # Landroid/view/View;

    .line 124
    iput-object p1, p0, Lcom/readboy/store/dialogs/BaseDialog;->dialogView:Landroid/view/View;

    .line 125
    return-void
.end method

.method public setOnDismissListener(Lcom/readboy/store/dialogs/BaseDialog$DialogDismissListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/readboy/store/dialogs/BaseDialog$DialogDismissListener;

    .line 64
    iput-object p1, p0, Lcom/readboy/store/dialogs/BaseDialog;->listener:Lcom/readboy/store/dialogs/BaseDialog$DialogDismissListener;

    .line 65
    return-void
.end method

.method public show()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/readboy/store/dialogs/BaseDialog;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/readboy/store/dialogs/BaseDialog;->init()V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/readboy/store/dialogs/BaseDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 115
    return-void
.end method
