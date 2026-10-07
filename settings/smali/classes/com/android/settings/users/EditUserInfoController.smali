.class public Lcom/android/settings/users/EditUserInfoController;
.super Ljava/lang/Object;
.source "EditUserInfoController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;
    }
.end annotation


# instance fields
.field private mEditUserInfoDialog:Landroid/app/Dialog;

.field private mEditUserPhotoController:Lcom/android/settings/users/EditUserPhotoController;

.field private mSavedPhoto:Landroid/graphics/Bitmap;

.field private mUser:Landroid/os/UserHandle;

.field private mUserManager:Landroid/os/UserManager;

.field private mWaitingForActivityResult:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/users/EditUserInfoController;->mWaitingForActivityResult:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/users/EditUserInfoController;)Landroid/os/UserHandle;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/EditUserInfoController;

    .line 48
    iget-object v0, p0, Lcom/android/settings/users/EditUserInfoController;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/users/EditUserInfoController;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/EditUserInfoController;

    .line 48
    iget-object v0, p0, Lcom/android/settings/users/EditUserInfoController;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/users/EditUserInfoController;)Lcom/android/settings/users/EditUserPhotoController;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/EditUserInfoController;

    .line 48
    iget-object v0, p0, Lcom/android/settings/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/settings/users/EditUserPhotoController;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/android/settings/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/settings/users/EditUserPhotoController;

    invoke-virtual {v0}, Lcom/android/settings/users/EditUserPhotoController;->removeNewUserPhotoBitmapFile()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    .line 68
    iput-object v0, p0, Lcom/android/settings/users/EditUserInfoController;->mSavedPhoto:Landroid/graphics/Bitmap;

    .line 69
    return-void
.end method

.method public createDialog(Landroid/app/Fragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ILcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;Landroid/os/UserHandle;)Landroid/app/Dialog;
    .locals 18
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "currentUserIcon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "currentUserName"    # Ljava/lang/CharSequence;
    .param p4, "titleResId"    # I
    .param p5, "callback"    # Lcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;
    .param p6, "user"    # Landroid/os/UserHandle;

    move-object/from16 v7, p0

    .line 114
    invoke-virtual/range {p1 .. p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 115
    .local v8, "activity":Landroid/app/Activity;
    move-object/from16 v9, p6

    iput-object v9, v7, Lcom/android/settings/users/EditUserInfoController;->mUser:Landroid/os/UserHandle;

    .line 116
    iget-object v0, v7, Lcom/android/settings/users/EditUserInfoController;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_0

    .line 117
    invoke-static {v8}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, v7, Lcom/android/settings/users/EditUserInfoController;->mUserManager:Landroid/os/UserManager;

    .line 119
    :cond_0
    invoke-virtual {v8}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    .line 120
    .local v10, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f0d009e

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 122
    .local v11, "content":Landroid/view/View;
    iget-object v0, v7, Lcom/android/settings/users/EditUserInfoController;->mUserManager:Landroid/os/UserManager;

    iget-object v1, v7, Lcom/android/settings/users/EditUserInfoController;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v12

    .line 124
    .local v12, "info":Landroid/content/pm/UserInfo;
    const v0, 0x7f0a04cb

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/EditText;

    .line 125
    .local v13, "userNameView":Landroid/widget/EditText;
    iget-object v0, v12, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 127
    const v0, 0x7f0a04cc

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/ImageView;

    .line 128
    .local v14, "userPhotoView":Landroid/widget/ImageView;
    const/4 v0, 0x0

    .line 129
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, v7, Lcom/android/settings/users/EditUserInfoController;->mSavedPhoto:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 130
    iget-object v1, v7, Lcom/android/settings/users/EditUserInfoController;->mSavedPhoto:Landroid/graphics/Bitmap;

    invoke-static {v8, v1}, Lcom/android/settingslib/drawable/CircleFramedDrawable;->getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settingslib/drawable/CircleFramedDrawable;

    move-result-object v0

    .line 137
    .end local v0
    .local v15, "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_0
    move-object v15, v0

    goto :goto_1

    .line 132
    .end local v15
    .restart local v0
    :cond_2
    move-object/from16 v0, p2

    .line 133
    if-nez v0, :cond_1

    .line 134
    iget-object v1, v7, Lcom/android/settings/users/EditUserInfoController;->mUserManager:Landroid/os/UserManager;

    invoke-static {v8, v1, v12}, Lcom/android/settingslib/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 137
    .end local v0
    .restart local v15
    :goto_1
    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    new-instance v0, Lcom/android/settings/users/EditUserPhotoController;

    iget-object v4, v7, Lcom/android/settings/users/EditUserInfoController;->mSavedPhoto:Landroid/graphics/Bitmap;

    iget-boolean v6, v7, Lcom/android/settings/users/EditUserInfoController;->mWaitingForActivityResult:Z

    move-object v1, v0

    move-object/from16 v2, p1

    move-object v3, v14

    move-object v5, v15

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/users/EditUserPhotoController;-><init>(Landroid/app/Fragment;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Z)V

    iput-object v0, v7, Lcom/android/settings/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/settings/users/EditUserPhotoController;

    .line 140
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120a75

    .line 141
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 142
    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 143
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v5, 0x104000a

    new-instance v4, Lcom/android/settings/users/EditUserInfoController$2;

    move-object v0, v4

    move-object v1, v7

    move-object v2, v13

    move-object/from16 v3, p3

    move-object/from16 v16, v8

    move-object v8, v4

    move-object/from16 v4, p5

    .end local v8
    .local v16, "activity":Landroid/app/Activity;
    move v9, v5

    move-object/from16 v5, p2

    move-object v9, v6

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/users/EditUserInfoController$2;-><init>(Lcom/android/settings/users/EditUserInfoController;Landroid/widget/EditText;Ljava/lang/CharSequence;Lcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;Landroid/graphics/drawable/Drawable;Landroid/app/Fragment;)V

    .line 144
    const v0, 0x104000a

    invoke-virtual {v9, v0, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/users/EditUserInfoController$1;

    invoke-direct {v2, v7}, Lcom/android/settings/users/EditUserInfoController$1;-><init>(Lcom/android/settings/users/EditUserInfoController;)V

    .line 183
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, v7, Lcom/android/settings/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    .line 192
    iget-object v0, v7, Lcom/android/settings/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 195
    iget-object v0, v7, Lcom/android/settings/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/users/EditUserInfoController;->mWaitingForActivityResult:Z

    .line 105
    iget-object v0, p0, Lcom/android/settings/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/settings/users/EditUserPhotoController;

    .line 106
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/users/EditUserPhotoController;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    return-void

    .line 109
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 76
    const-string v0, "pending_photo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "pendingPhoto":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 78
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/settings/users/EditUserPhotoController;->loadNewUserPhotoBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/users/EditUserInfoController;->mSavedPhoto:Landroid/graphics/Bitmap;

    .line 80
    :cond_0
    const-string v1, "awaiting_result"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/users/EditUserInfoController;->mWaitingForActivityResult:Z

    .line 81
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 84
    iget-object v0, p0, Lcom/android/settings/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/settings/users/EditUserPhotoController;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/settings/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/settings/users/EditUserPhotoController;

    invoke-virtual {v0}, Lcom/android/settings/users/EditUserPhotoController;->saveNewUserPhotoBitmap()Ljava/io/File;

    move-result-object v0

    .line 89
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 90
    const-string v1, "pending_photo"

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .end local v0
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/users/EditUserInfoController;->mWaitingForActivityResult:Z

    if-eqz v0, :cond_1

    .line 94
    const-string v0, "awaiting_result"

    iget-boolean v1, p0, Lcom/android/settings/users/EditUserInfoController;->mWaitingForActivityResult:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 96
    :cond_1
    return-void
.end method

.method public startingActivityForResult()V
    .locals 1

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/users/EditUserInfoController;->mWaitingForActivityResult:Z

    .line 100
    return-void
.end method
