.class Lcom/android/settings/CryptKeeper$4;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/CryptKeeper;->setupUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field owner_info:Ljava/lang/String;

.field passwordType:I

.field password_visible:Z

.field pattern_visible:Z

.field final synthetic this$0:Lcom/android/settings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/CryptKeeper;

    .line 485
    iput-object p1, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 486
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/CryptKeeper$4;->passwordType:I

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 485
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/CryptKeeper$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "v"    # [Ljava/lang/Void;

    .line 494
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->access$300(Lcom/android/settings/CryptKeeper;)Landroid/os/storage/IStorageManager;

    move-result-object v0

    .line 495
    .local v0, "service":Landroid/os/storage/IStorageManager;
    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->getPasswordType()I

    move-result v1

    iput v1, p0, Lcom/android/settings/CryptKeeper$4;->passwordType:I

    .line 496
    const-string v1, "OwnerInfo"

    invoke-interface {v0, v1}, Landroid/os/storage/IStorageManager;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/CryptKeeper$4;->owner_info:Ljava/lang/String;

    .line 497
    const-string v1, "0"

    const-string v2, "PatternVisible"

    invoke-interface {v0, v2}, Landroid/os/storage/IStorageManager;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/CryptKeeper$4;->pattern_visible:Z

    .line 498
    const-string v1, "0"

    const-string v2, "PasswordVisible"

    invoke-interface {v0, v2}, Landroid/os/storage/IStorageManager;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/CryptKeeper$4;->password_visible:Z

    .line 501
    .end local v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 499
    :catch_0
    move-exception v0

    .line 500
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CryptKeeper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling mount service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    .end local v0
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 485
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/CryptKeeper$4;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 6
    .param p1, "v"    # Ljava/lang/Void;

    .line 508
    iget-object v0, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v0}, Lcom/android/settings/CryptKeeper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_password"

    .line 509
    iget-boolean v2, p0, Lcom/android/settings/CryptKeeper$4;->password_visible:Z

    .line 508
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 511
    iget v0, p0, Lcom/android/settings/CryptKeeper$4;->passwordType:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    const v1, 0x7f0d0078

    invoke-virtual {v0, v1}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 513
    iget-object v0, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    const v1, 0x7f1205cf

    invoke-static {v0, v1}, Lcom/android/settings/CryptKeeper;->access$1202(Lcom/android/settings/CryptKeeper;I)I

    goto :goto_0

    .line 514
    :cond_0
    iget v0, p0, Lcom/android/settings/CryptKeeper$4;->passwordType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 515
    iget-object v0, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    const v1, 0x7f0d0076

    invoke-virtual {v0, v1}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 516
    iget-object v0, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v0, v2}, Lcom/android/settings/CryptKeeper;->access$1300(Lcom/android/settings/CryptKeeper;Z)V

    .line 517
    iget-object v0, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    const v1, 0x7f1205ce

    invoke-static {v0, v1}, Lcom/android/settings/CryptKeeper;->access$1202(Lcom/android/settings/CryptKeeper;I)I

    goto :goto_0

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    const v1, 0x7f0d0074

    invoke-virtual {v0, v1}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 520
    iget-object v0, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    const v1, 0x7f1205cd

    invoke-static {v0, v1}, Lcom/android/settings/CryptKeeper;->access$1202(Lcom/android/settings/CryptKeeper;I)I

    .line 522
    :goto_0
    iget-object v0, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    const v1, 0x7f0a03fa

    invoke-virtual {v0, v1}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 523
    .local v0, "status":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v1}, Lcom/android/settings/CryptKeeper;->access$1200(Lcom/android/settings/CryptKeeper;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 525
    iget-object v1, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    const v3, 0x7f0a02cf

    invoke-virtual {v1, v3}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 526
    .local v1, "ownerInfo":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/settings/CryptKeeper$4;->owner_info:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 529
    iget-object v4, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v4}, Lcom/android/settings/CryptKeeper;->access$1400(Lcom/android/settings/CryptKeeper;)V

    .line 531
    iget-object v4, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    const v5, 0x1020002

    invoke-virtual {v4, v5}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/high16 v5, 0x400000

    invoke-virtual {v4, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 533
    iget-object v4, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v4}, Lcom/android/settings/CryptKeeper;->access$100(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 534
    iget-object v4, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v4}, Lcom/android/settings/CryptKeeper;->access$100(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/CryptKeeper$4;->pattern_visible:Z

    xor-int/2addr v3, v5

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 536
    :cond_2
    iget-object v3, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v3}, Lcom/android/settings/CryptKeeper;->access$1500(Lcom/android/settings/CryptKeeper;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 538
    iget-object v3, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v3, v2}, Lcom/android/settings/CryptKeeper;->access$1300(Lcom/android/settings/CryptKeeper;Z)V

    .line 539
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$4;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->access$1600(Lcom/android/settings/CryptKeeper;)V

    .line 542
    :cond_3
    return-void
.end method
