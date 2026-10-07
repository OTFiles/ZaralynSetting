.class Lcom/android/settings/CredentialStorage$UnlockDialog;
.super Ljava/lang/Object;
.source "CredentialStorage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CredentialStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockDialog"
.end annotation


# instance fields
.field private final mButton:Landroid/widget/Button;

.field private final mError:Landroid/widget/TextView;

.field private final mOldPassword:Landroid/widget/TextView;

.field private mUnlockConfirmed:Z

.field final synthetic this$0:Lcom/android/settings/CredentialStorage;


# direct methods
.method private constructor <init>(Lcom/android/settings/CredentialStorage;)V
    .locals 6

    .line 522
    iput-object p1, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    const v0, 0x7f0d0070

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 526
    .local v0, "view":Landroid/view/View;
    invoke-static {p1}, Lcom/android/settings/CredentialStorage;->access$500(Lcom/android/settings/CredentialStorage;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 527
    invoke-virtual {p1}, Lcom/android/settings/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f120422

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, "text":Ljava/lang/CharSequence;
    :goto_0
    goto :goto_1

    .line 528
    .end local v1
    :cond_0
    invoke-static {p1}, Lcom/android/settings/CredentialStorage;->access$500(Lcom/android/settings/CredentialStorage;)I

    move-result v1

    const/4 v4, 0x3

    if-le v1, v4, :cond_1

    .line 529
    invoke-virtual {p1}, Lcom/android/settings/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f120423

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 530
    :cond_1
    invoke-static {p1}, Lcom/android/settings/CredentialStorage;->access$500(Lcom/android/settings/CredentialStorage;)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    .line 531
    invoke-virtual {p1}, Lcom/android/settings/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f12041d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 533
    :cond_2
    const v1, 0x7f12041e

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/settings/CredentialStorage;->access$500(Lcom/android/settings/CredentialStorage;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {p1, v1, v4}, Lcom/android/settings/CredentialStorage;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 536
    .restart local v1
    :goto_1
    const v4, 0x7f0a01d1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    const v4, 0x7f0a02bf

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    .line 538
    iget-object v4, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 539
    iget-object v4, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 540
    const v4, 0x7f0a0176

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->mError:Landroid/widget/TextView;

    .line 542
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 543
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v4, 0x7f120421

    .line 544
    invoke-virtual {p1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v4, 0x104000a

    .line 545
    invoke-virtual {p1, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v4, 0x1040000

    .line 546
    invoke-virtual {p1, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 547
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 548
    .local p1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {p1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 549
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 550
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->mButton:Landroid/widget/Button;

    .line 551
    iget-object v2, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->mButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 552
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/CredentialStorage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/CredentialStorage;
    .param p2, "x1"    # Lcom/android/settings/CredentialStorage$1;

    .line 514
    invoke-direct {p0, p1}, Lcom/android/settings/CredentialStorage$UnlockDialog;-><init>(Lcom/android/settings/CredentialStorage;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "editable"    # Landroid/text/Editable;

    .line 556
    iget-object v0, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 557
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 561
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .line 569
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->mUnlockConfirmed:Z

    .line 570
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 574
    iget-boolean v0, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->mUnlockConfirmed:Z

    if-eqz v0, :cond_3

    .line 575
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->mUnlockConfirmed:Z

    .line 576
    iget-object v1, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->mError:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 577
    iget-object v1, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-static {v1}, Lcom/android/settings/CredentialStorage;->access$600(Lcom/android/settings/CredentialStorage;)Landroid/security/KeyStore;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/KeyStore;->unlock(Ljava/lang/String;)Z

    .line 578
    iget-object v1, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-static {v1}, Lcom/android/settings/CredentialStorage;->access$600(Lcom/android/settings/CredentialStorage;)Landroid/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/KeyStore;->getLastError()I

    move-result v1

    .line 579
    .local v1, "error":I
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 580
    iget-object v3, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-static {v3, v2}, Lcom/android/settings/CredentialStorage;->access$502(Lcom/android/settings/CredentialStorage;I)I

    .line 581
    iget-object v2, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings/CredentialStorage;

    const v3, 0x7f120414

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 583
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 586
    iget-object v0, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-static {v0}, Lcom/android/settings/CredentialStorage;->access$700(Lcom/android/settings/CredentialStorage;)V

    goto :goto_0

    .line 587
    :cond_0
    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    .line 588
    iget-object v3, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-static {v3, v2}, Lcom/android/settings/CredentialStorage;->access$502(Lcom/android/settings/CredentialStorage;I)I

    .line 589
    iget-object v2, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings/CredentialStorage;

    const v3, 0x7f120415

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 591
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 593
    iget-object v0, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-static {v0}, Lcom/android/settings/CredentialStorage;->access$800(Lcom/android/settings/CredentialStorage;)V

    goto :goto_0

    .line 594
    :cond_1
    const/16 v0, 0xa

    if-lt v1, v0, :cond_2

    .line 596
    iget-object v0, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings/CredentialStorage;

    add-int/lit8 v2, v1, -0xa

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Lcom/android/settings/CredentialStorage;->access$502(Lcom/android/settings/CredentialStorage;I)I

    .line 597
    iget-object v0, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-static {v0}, Lcom/android/settings/CredentialStorage;->access$800(Lcom/android/settings/CredentialStorage;)V

    .line 599
    :cond_2
    :goto_0
    return-void

    .line 601
    .end local v1
    :cond_3
    iget-object v0, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-virtual {v0}, Lcom/android/settings/CredentialStorage;->finish()V

    .line 602
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 565
    return-void
.end method
