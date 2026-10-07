.class public Lcom/readboy/store/dialogs/UpdatingDialog;
.super Lcom/readboy/store/dialogs/BaseDialog;
.source "UpdatingDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UpdatingDialog"


# instance fields
.field private appName:Ljava/lang/String;

.field private appNameTxt:Landroid/widget/TextView;

.field private cancelBtn:Landroid/widget/TextView;

.field private cancelListener:Landroid/view/View$OnClickListener;

.field private contentLayout:Landroid/widget/LinearLayout;

.field private mProgress:I

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private progressTxt:Landroid/widget/TextView;

.field setLandParamsAction:Ljava/lang/Runnable;

.field setPortParamsAction:Ljava/lang/Runnable;

.field private versionName:Ljava/lang/String;

.field private versionNameTxt:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/readboy/store/dialogs/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/readboy/store/dialogs/UpdatingDialog;->cancelListener:Landroid/view/View$OnClickListener;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/readboy/store/dialogs/UpdatingDialog;->mProgress:I

    .line 59
    new-instance v0, Lcom/readboy/store/dialogs/UpdatingDialog$1;

    invoke-direct {v0, p0}, Lcom/readboy/store/dialogs/UpdatingDialog$1;-><init>(Lcom/readboy/store/dialogs/UpdatingDialog;)V

    iput-object v0, p0, Lcom/readboy/store/dialogs/UpdatingDialog;->setLandParamsAction:Ljava/lang/Runnable;

    .line 71
    new-instance v0, Lcom/readboy/store/dialogs/UpdatingDialog$2;

    invoke-direct {v0, p0}, Lcom/readboy/store/dialogs/UpdatingDialog$2;-><init>(Lcom/readboy/store/dialogs/UpdatingDialog;)V

    iput-object v0, p0, Lcom/readboy/store/dialogs/UpdatingDialog;->setPortParamsAction:Ljava/lang/Runnable;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "dialogViewId"    # I

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/readboy/store/dialogs/BaseDialog;-><init>(Landroid/content/Context;II)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/readboy/store/dialogs/UpdatingDialog;->cancelListener:Landroid/view/View$OnClickListener;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/readboy/store/dialogs/UpdatingDialog;->mProgress:I

    .line 59
    new-instance v0, Lcom/readboy/store/dialogs/UpdatingDialog$1;

    invoke-direct {v0, p0}, Lcom/readboy/store/dialogs/UpdatingDialog$1;-><init>(Lcom/readboy/store/dialogs/UpdatingDialog;)V

    iput-object v0, p0, Lcom/readboy/store/dialogs/UpdatingDialog;->setLandParamsAction:Ljava/lang/Runnable;

    .line 71
    new-instance v0, Lcom/readboy/store/dialogs/UpdatingDialog$2;

    invoke-direct {v0, p0}, Lcom/readboy/store/dialogs/UpdatingDialog$2;-><init>(Lcom/readboy/store/dialogs/UpdatingDialog;)V

    iput-object v0, p0, Lcom/readboy/store/dialogs/UpdatingDialog;->setPortParamsAction:Ljava/lang/Runnable;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "dialogView"    # Landroid/view/View;

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/readboy/store/dialogs/BaseDialog;-><init>(Landroid/content/Context;ILandroid/view/View;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/readboy/store/dialogs/UpdatingDialog;->cancelListener:Landroid/view/View$OnClickListener;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/readboy/store/dialogs/UpdatingDialog;->mProgress:I

    .line 59
    new-instance v0, Lcom/readboy/store/dialogs/UpdatingDialog$1;

    invoke-direct {v0, p0}, Lcom/readboy/store/dialogs/UpdatingDialog$1;-><init>(Lcom/readboy/store/dialogs/UpdatingDialog;)V

    iput-object v0, p0, Lcom/readboy/store/dialogs/UpdatingDialog;->setLandParamsAction:Ljava/lang/Runnable;

    .line 71
    new-instance v0, Lcom/readboy/store/dialogs/UpdatingDialog$2;

    invoke-direct {v0, p0}, Lcom/readboy/store/dialogs/UpdatingDialog$2;-><init>(Lcom/readboy/store/dialogs/UpdatingDialog;)V

    iput-object v0, p0, Lcom/readboy/store/dialogs/UpdatingDialog;->setPortParamsAction:Ljava/lang/Runnable;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/readboy/store/dialogs/UpdatingDialog;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/readboy/store/dialogs/UpdatingDialog;

    .line 29
    iget-object v0, p0, Lcom/readboy/store/dialogs/UpdatingDialog;->contentLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method public getDialogView()Landroid/view/View;
    .locals 5

    .line 85
    invoke-virtual {p0}, Lcom/readboy/store/dialogs/UpdatingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/readboy/store/AppUpdate/R$layout;->rb_app_update_updating_dialog_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/readboy/store/dialogs/MiddleView;

    .line 87
    .local v0, "view":Lcom/readboy/store/dialogs/MiddleView;
    sget v1, Lcom/readboy/store/AppUpdate/R$id;->rb_app_update_updating_content_layout:I

    invoke-virtual {v0, v1}, Lcom/readboy/store/dialogs/MiddleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/readboy/store/dialogs/UpdatingDialog;->contentLayout:Landroid/widget/LinearLayout;

    .line 100
    sget v1, Lcom/readboy/store/AppUpdate/R$id;->rb_app_update_updating_app_name:I

    invoke-virtual {v0, v1}, Lcom/readboy/store/dialogs/MiddleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/readboy/store/dialogs/UpdatingDialog;->appNameTxt:Landroid/widget/TextView;

    .line 101
    iget-object v1, p0, Lcom/readboy/store/dialogs/UpdatingDialog;->appNameTxt:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/readboy/store/dialogs/UpdatingDialog;->appName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    sget v1, Lcom/readboy/store/AppUpdate/R$id;->rb_app_update_updating_version_name:I

    invoke-virtual {v0, v1}, Lcom/readboy/store/dialogs/MiddleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/readboy/store/dialogs/UpdatingDialog;->versionNameTxt:Landroid/widget/TextView;

    .line 104
    iget-object v1, p0, Lcom/readboy/store/dialogs/UpdatingDialog;->versionNameTxt:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/readboy/store/dialogs/UpdatingDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/readboy/store/AppUpdate/R$string;->rb_app_update_version:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/readboy/store/dialogs/UpdatingDialog;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    sget v1, Lcom/readboy/store/AppUpdate/R$id;->rb_app_update_progressBar:I

    invoke-virtual {v0, v1}, Lcom/readboy/store/dialogs/MiddleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/readboy/store/dialogs/UpdatingDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 107
    sget v1, Lcom/readboy/store/AppUpdate/R$id;->rb_app_update_progress_txt:I

    invoke-virtual {v0, v1}, Lcom/readboy/store/dialogs/MiddleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/readboy/store/dialogs/UpdatingDialog;->progressTxt:Landroid/widget/TextView;

    .line 108
    iget v1, p0, Lcom/readboy/store/dialogs/UpdatingDialog;->mProgress:I

    invoke-virtual {p0, v1}, Lcom/readboy/store/dialogs/UpdatingDialog;->setProgress(I)V

    .line 110
    sget v1, Lcom/readboy/store/AppUpdate/R$id;->rb_app_update_cancel_btn:I

    invoke-virtual {v0, v1}, Lcom/readboy/store/dialogs/MiddleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/readboy/store/dialogs/UpdatingDialog;->cancelBtn:Landroid/widget/TextView;

    .line 111
    iget-object v1, p0, Lcom/readboy/store/dialogs/UpdatingDialog;->cancelBtn:Landroid/widget/TextView;

    new-instance v2, Lcom/readboy/store/dialogs/UpdatingDialog$3;

    invoke-direct {v2, p0}, Lcom/readboy/store/dialogs/UpdatingDialog$3;-><init>(Lcom/readboy/store/dialogs/UpdatingDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    return-object v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .line 123
    iput-object p1, p0, Lcom/readboy/store/dialogs/UpdatingDialog;->appName:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setProgress(I)V
    .locals 5
    .param p1, "mProgress"    # I

    .line 131
    iget-object v0, p0, Lcom/readboy/store/dialogs/UpdatingDialog;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/readboy/store/dialogs/UpdatingDialog;->progressTxt:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    iput p1, p0, Lcom/readboy/store/dialogs/UpdatingDialog;->mProgress:I

    .line 137
    iget-object v0, p0, Lcom/readboy/store/dialogs/UpdatingDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 138
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    .line 140
    .local v0, "mProgressFormat":Ljava/text/NumberFormat;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 141
    int-to-double v1, p1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "percentFormat":Ljava/lang/String;
    iget-object v2, p0, Lcom/readboy/store/dialogs/UpdatingDialog;->progressTxt:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    return-void

    .line 132
    .end local v0
    .end local v1
    :cond_1
    :goto_0
    const-string v0, "UpdatingDialog"

    const-string v1, "set progress error.."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionName"    # Ljava/lang/String;

    .line 127
    iput-object p1, p0, Lcom/readboy/store/dialogs/UpdatingDialog;->versionName:Ljava/lang/String;

    .line 128
    return-void
.end method
