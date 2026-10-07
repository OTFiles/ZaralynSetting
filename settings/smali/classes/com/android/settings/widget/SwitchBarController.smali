.class public Lcom/android/settings/widget/SwitchBarController;
.super Lcom/android/settings/widget/SwitchWidgetController;
.source "SwitchBarController.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private final mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mSwitchLable:Ljava/lang/String;

.field private mSwitchTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/SwitchBar;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "switchBar"    # Lcom/android/settings/widget/SwitchBar;
    .param p2, "swithLable"    # Ljava/lang/String;
    .param p3, "switchTag"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Lcom/android/settings/widget/SwitchWidgetController;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 40
    iput-object p2, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchLable:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchTag:Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchLable:Ljava/lang/String;

    const v2, 0x7f0a0443

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/widget/SwitchBar;->setTag(ILjava/lang/Object;)V

    .line 43
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .line 116
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBarController;->mListener:Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;

    if-eqz v0, :cond_0

    .line 117
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "===divhee===========onSwitchChanged==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchLable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBarController;->mListener:Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;

    invoke-interface {v0, p2}, Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;->onSwitchToggled(Z)Z

    .line 123
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .line 91
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 97
    :cond_0
    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 1
    .param p1, "admin"    # Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 127
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 133
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 106
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 112
    :cond_0
    return-void
.end method

.method public setupView()V
    .locals 3

    .line 47
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "========divhee=========setupView======="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchLable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchLable:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/SwitchBar;->show(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 54
    :goto_0
    return-void
.end method

.method public startListening()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 78
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 80
    :cond_0
    return-void
.end method

.method public stopListening()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 87
    :cond_0
    return-void
.end method

.method public teardownView()V
    .locals 3

    .line 58
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "========divhee=========teardownView======="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchLable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchLable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->hide(Ljava/lang/String;)V

    .line 64
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 65
    :goto_0
    return-void
.end method

.method public updateTitle(Z)V
    .locals 1
    .param p1, "isChecked"    # Z

    .line 69
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setTextViewLabel(Z)V

    .line 72
    :cond_0
    return-void
.end method
