.class public Lcom/readboy/store/dialogs/UpdateTipDialog;
.super Lcom/readboy/store/dialogs/BaseDialog;
.source "UpdateTipDialog.java"


# instance fields
.field private appIcon:Landroid/widget/ImageView;

.field private appName:Ljava/lang/String;

.field private appNameTxt:Landroid/widget/TextView;

.field private appVersionName:Ljava/lang/String;

.field private appVersionNameTxt:Landroid/widget/TextView;

.field private iconId:I

.field layout:Landroid/widget/LinearLayout;

.field layoutRes:I

.field private negative:Ljava/lang/String;

.field private negativeButton:Landroid/widget/TextView;

.field private negativeButtonListener:Landroid/view/View$OnClickListener;

.field private positive:Ljava/lang/String;

.field private positiveButton:Landroid/widget/TextView;

.field private positiveButtonListener:Landroid/view/View$OnClickListener;

.field setLandParamsAction:Ljava/lang/Runnable;

.field setPortParamsAction:Ljava/lang/Runnable;

.field private updateConent:Ljava/lang/String;

.field private updateContentTxt:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/readboy/store/dialogs/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->iconId:I

    .line 39
    sget v0, Lcom/readboy/store/AppUpdate/R$layout;->rb_app_update_update_dialog_view:I

    iput v0, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->layoutRes:I

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->positiveButtonListener:Landroid/view/View$OnClickListener;

    .line 43
    iput-object v0, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->negativeButtonListener:Landroid/view/View$OnClickListener;

    .line 62
    new-instance v0, Lcom/readboy/store/dialogs/UpdateTipDialog$1;

    invoke-direct {v0, p0}, Lcom/readboy/store/dialogs/UpdateTipDialog$1;-><init>(Lcom/readboy/store/dialogs/UpdateTipDialog;)V

    iput-object v0, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->setLandParamsAction:Ljava/lang/Runnable;

    .line 74
    new-instance v0, Lcom/readboy/store/dialogs/UpdateTipDialog$2;

    invoke-direct {v0, p0}, Lcom/readboy/store/dialogs/UpdateTipDialog$2;-><init>(Lcom/readboy/store/dialogs/UpdateTipDialog;)V

    iput-object v0, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->setPortParamsAction:Ljava/lang/Runnable;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "dialogViewId"    # I

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/readboy/store/dialogs/BaseDialog;-><init>(Landroid/content/Context;II)V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->iconId:I

    .line 39
    sget v0, Lcom/readboy/store/AppUpdate/R$layout;->rb_app_update_update_dialog_view:I

    iput v0, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->layoutRes:I

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->positiveButtonListener:Landroid/view/View$OnClickListener;

    .line 43
    iput-object v0, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->negativeButtonListener:Landroid/view/View$OnClickListener;

    .line 62
    new-instance v0, Lcom/readboy/store/dialogs/UpdateTipDialog$1;

    invoke-direct {v0, p0}, Lcom/readboy/store/dialogs/UpdateTipDialog$1;-><init>(Lcom/readboy/store/dialogs/UpdateTipDialog;)V

    iput-object v0, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->setLandParamsAction:Ljava/lang/Runnable;

    .line 74
    new-instance v0, Lcom/readboy/store/dialogs/UpdateTipDialog$2;

    invoke-direct {v0, p0}, Lcom/readboy/store/dialogs/UpdateTipDialog$2;-><init>(Lcom/readboy/store/dialogs/UpdateTipDialog;)V

    iput-object v0, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->setPortParamsAction:Ljava/lang/Runnable;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "dialogView"    # Landroid/view/View;

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/readboy/store/dialogs/BaseDialog;-><init>(Landroid/content/Context;ILandroid/view/View;)V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->iconId:I

    .line 39
    sget v0, Lcom/readboy/store/AppUpdate/R$layout;->rb_app_update_update_dialog_view:I

    iput v0, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->layoutRes:I

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->positiveButtonListener:Landroid/view/View$OnClickListener;

    .line 43
    iput-object v0, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->negativeButtonListener:Landroid/view/View$OnClickListener;

    .line 62
    new-instance v0, Lcom/readboy/store/dialogs/UpdateTipDialog$1;

    invoke-direct {v0, p0}, Lcom/readboy/store/dialogs/UpdateTipDialog$1;-><init>(Lcom/readboy/store/dialogs/UpdateTipDialog;)V

    iput-object v0, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->setLandParamsAction:Ljava/lang/Runnable;

    .line 74
    new-instance v0, Lcom/readboy/store/dialogs/UpdateTipDialog$2;

    invoke-direct {v0, p0}, Lcom/readboy/store/dialogs/UpdateTipDialog$2;-><init>(Lcom/readboy/store/dialogs/UpdateTipDialog;)V

    iput-object v0, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->setPortParamsAction:Ljava/lang/Runnable;

    .line 59
    return-void
.end method


# virtual methods
.method public getDialogView()Landroid/view/View;
    .locals 5

    .line 89
    invoke-virtual {p0}, Lcom/readboy/store/dialogs/UpdateTipDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->layoutRes:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/readboy/store/dialogs/MiddleView;

    .line 91
    .local v0, "view":Lcom/readboy/store/dialogs/MiddleView;
    sget v1, Lcom/readboy/store/AppUpdate/R$id;->rb_app_update_content_layout:I

    invoke-virtual {v0, v1}, Lcom/readboy/store/dialogs/MiddleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->layout:Landroid/widget/LinearLayout;

    .line 103
    sget v1, Lcom/readboy/store/AppUpdate/R$id;->rb_app_update_app_icon:I

    invoke-virtual {v0, v1}, Lcom/readboy/store/dialogs/MiddleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->appIcon:Landroid/widget/ImageView;

    .line 104
    iget-object v1, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->appIcon:Landroid/widget/ImageView;

    iget v2, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->iconId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    sget v1, Lcom/readboy/store/AppUpdate/R$id;->rb_app_update_app_name:I

    invoke-virtual {v0, v1}, Lcom/readboy/store/dialogs/MiddleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->appNameTxt:Landroid/widget/TextView;

    .line 107
    iget-object v1, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->appNameTxt:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->appName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    sget v1, Lcom/readboy/store/AppUpdate/R$id;->rb_app_update_version_name:I

    invoke-virtual {v0, v1}, Lcom/readboy/store/dialogs/MiddleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->appVersionNameTxt:Landroid/widget/TextView;

    .line 110
    iget-object v1, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->appVersionNameTxt:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/readboy/store/dialogs/UpdateTipDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/readboy/store/AppUpdate/R$string;->rb_app_update_version:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->appVersionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    sget v1, Lcom/readboy/store/AppUpdate/R$id;->rb_app_update_updata_detail:I

    invoke-virtual {v0, v1}, Lcom/readboy/store/dialogs/MiddleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->updateContentTxt:Landroid/widget/TextView;

    .line 113
    iget-object v1, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->updateContentTxt:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->updateConent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    sget v1, Lcom/readboy/store/AppUpdate/R$id;->rb_app_update_positive_btn:I

    invoke-virtual {v0, v1}, Lcom/readboy/store/dialogs/MiddleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->positiveButton:Landroid/widget/TextView;

    .line 116
    iget-object v1, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->positiveButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->positive:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "OK"

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->positive:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v1, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->positiveButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->positiveButtonListener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->positiveButtonListener:Landroid/view/View$OnClickListener;

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/readboy/store/dialogs/UpdateTipDialog$3;

    invoke-direct {v2, p0}, Lcom/readboy/store/dialogs/UpdateTipDialog$3;-><init>(Lcom/readboy/store/dialogs/UpdateTipDialog;)V

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    sget v1, Lcom/readboy/store/AppUpdate/R$id;->rb_app_update_negative_btn:I

    invoke-virtual {v0, v1}, Lcom/readboy/store/dialogs/MiddleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->negativeButton:Landroid/widget/TextView;

    .line 124
    iget-object v1, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->negativeButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->negativeButtonListener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->negativeButtonListener:Landroid/view/View$OnClickListener;

    goto :goto_2

    :cond_2
    new-instance v2, Lcom/readboy/store/dialogs/UpdateTipDialog$4;

    invoke-direct {v2, p0}, Lcom/readboy/store/dialogs/UpdateTipDialog$4;-><init>(Lcom/readboy/store/dialogs/UpdateTipDialog;)V

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v1, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->negativeButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->negative:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "Cancel"

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->negative:Ljava/lang/String;

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    return-object v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .line 139
    iput-object p1, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->appName:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setAppVersionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appVersionName"    # Ljava/lang/String;

    .line 143
    iput-object p1, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->appVersionName:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setIconId(I)V
    .locals 0
    .param p1, "iconId"    # I

    .line 135
    iput p1, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->iconId:I

    .line 136
    return-void
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .line 154
    iput-object p1, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->negative:Ljava/lang/String;

    .line 155
    iput-object p2, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->negativeButtonListener:Landroid/view/View$OnClickListener;

    .line 156
    return-void
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .line 150
    iput-object p1, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->positive:Ljava/lang/String;

    .line 151
    iput-object p2, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->positiveButtonListener:Landroid/view/View$OnClickListener;

    .line 152
    return-void
.end method

.method public setUpdataConent(Ljava/lang/String;)V
    .locals 0
    .param p1, "updateConent"    # Ljava/lang/String;

    .line 147
    iput-object p1, p0, Lcom/readboy/store/dialogs/UpdateTipDialog;->updateConent:Ljava/lang/String;

    .line 148
    return-void
.end method
