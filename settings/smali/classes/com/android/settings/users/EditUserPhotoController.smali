.class public Lcom/android/settings/users/EditUserPhotoController;
.super Ljava/lang/Object;
.source "EditUserPhotoController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/users/EditUserPhotoController$RestrictedPopupMenuAdapter;,
        Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCropPictureUri:Landroid/net/Uri;

.field private final mFragment:Landroid/app/Fragment;

.field private final mImageView:Landroid/widget/ImageView;

.field private mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

.field private mNewUserPhotoDrawable:Landroid/graphics/drawable/Drawable;

.field private final mPhotoSize:I

.field private final mTakePictureUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Z)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "view"    # Landroid/widget/ImageView;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p5, "waiting"    # Z

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->mContext:Landroid/content/Context;

    .line 96
    iput-object p1, p0, Lcom/android/settings/users/EditUserPhotoController;->mFragment:Landroid/app/Fragment;

    .line 97
    iput-object p2, p0, Lcom/android/settings/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    .line 98
    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->mContext:Landroid/content/Context;

    const-string v1, "CropEditUserPhoto.jpg"

    xor-int/lit8 v2, p5, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/users/EditUserPhotoController;->createTempImageUri(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->mCropPictureUri:Landroid/net/Uri;

    .line 99
    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->mContext:Landroid/content/Context;

    const-string v1, "TakeEditUserPhoto2.jpg"

    xor-int/lit8 v2, p5, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/users/EditUserPhotoController;->createTempImageUri(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->mTakePictureUri:Landroid/net/Uri;

    .line 100
    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/users/EditUserPhotoController;->getPhotoSize(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/users/EditUserPhotoController;->mPhotoSize:I

    .line 101
    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/settings/users/EditUserPhotoController$1;

    invoke-direct {v1, p0}, Lcom/android/settings/users/EditUserPhotoController$1;-><init>(Lcom/android/settings/users/EditUserPhotoController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iput-object p3, p0, Lcom/android/settings/users/EditUserPhotoController;->mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

    .line 108
    iput-object p4, p0, Lcom/android/settings/users/EditUserPhotoController;->mNewUserPhotoDrawable:Landroid/graphics/drawable/Drawable;

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/users/EditUserPhotoController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/EditUserPhotoController;

    .line 68
    invoke-direct {p0}, Lcom/android/settings/users/EditUserPhotoController;->showUpdatePhotoPopup()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/users/EditUserPhotoController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/EditUserPhotoController;

    .line 68
    invoke-direct {p0}, Lcom/android/settings/users/EditUserPhotoController;->takePhoto()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/users/EditUserPhotoController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/EditUserPhotoController;

    .line 68
    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/users/EditUserPhotoController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/EditUserPhotoController;

    .line 68
    invoke-direct {p0}, Lcom/android/settings/users/EditUserPhotoController;->choosePhoto()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/users/EditUserPhotoController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/EditUserPhotoController;

    .line 68
    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/users/EditUserPhotoController;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/EditUserPhotoController;

    .line 68
    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->mTakePictureUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/users/EditUserPhotoController;)Landroid/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/EditUserPhotoController;

    .line 68
    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/users/EditUserPhotoController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/EditUserPhotoController;

    .line 68
    invoke-direct {p0}, Lcom/android/settings/users/EditUserPhotoController;->cropPhoto()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/users/EditUserPhotoController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/EditUserPhotoController;

    .line 68
    iget v0, p0, Lcom/android/settings/users/EditUserPhotoController;->mPhotoSize:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/users/EditUserPhotoController;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/EditUserPhotoController;

    .line 68
    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings/users/EditUserPhotoController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/EditUserPhotoController;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .line 68
    iput-object p1, p0, Lcom/android/settings/users/EditUserPhotoController;->mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/settings/users/EditUserPhotoController;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/EditUserPhotoController;

    .line 68
    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->mNewUserPhotoDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/settings/users/EditUserPhotoController;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/EditUserPhotoController;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .line 68
    iput-object p1, p0, Lcom/android/settings/users/EditUserPhotoController;->mNewUserPhotoDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method private appendCropExtras(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 275
    const-string v0, "crop"

    const-string v1, "true"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const-string v0, "scale"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 277
    const-string v0, "scaleUpIfNeeded"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 278
    const-string v0, "aspectX"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 279
    const-string v0, "aspectY"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 280
    const-string v0, "outputX"

    iget v1, p0, Lcom/android/settings/users/EditUserPhotoController;->mPhotoSize:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 281
    const-string v0, "outputY"

    iget v1, p0, Lcom/android/settings/users/EditUserPhotoController;->mPhotoSize:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    return-void
.end method

.method private appendOutputExtra(Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "pictureUri"    # Landroid/net/Uri;

    .line 268
    const-string v0, "output"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 269
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 271
    const-string v0, "output"

    invoke-static {v0, p2}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 272
    return-void
.end method

.method private canChoosePhoto()Z
    .locals 3

    .line 208
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 211
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x1

    nop

    .line 210
    :cond_0
    return v2
.end method

.method private canTakePhoto()Z
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 204
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 202
    :goto_0
    return v0
.end method

.method private choosePhoto()V
    .locals 3

    .line 221
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 222
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController;->mTakePictureUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/users/EditUserPhotoController;->appendOutputExtra(Landroid/content/Intent;Landroid/net/Uri;)V

    .line 224
    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController;->mFragment:Landroid/app/Fragment;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v0, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 225
    return-void
.end method

.method private copyAndCropPhoto(Landroid/net/Uri;)V
    .locals 2
    .param p1, "pictureUri"    # Landroid/net/Uri;

    .line 228
    new-instance v0, Lcom/android/settings/users/EditUserPhotoController$5;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/users/EditUserPhotoController$5;-><init>(Lcom/android/settings/users/EditUserPhotoController;Landroid/net/Uri;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 246
    invoke-virtual {v0, v1}, Lcom/android/settings/users/EditUserPhotoController$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 247
    return-void
.end method

.method private createTempImageUri(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "purge"    # Z

    .line 364
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 365
    .local v0, "folder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 366
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 367
    .local v1, "fullPath":Ljava/io/File;
    if-eqz p3, :cond_0

    .line 368
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 370
    :cond_0
    const-string v2, "com.android.settings.files"

    invoke-static {p1, v2, v1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method private cropPhoto()V
    .locals 3

    .line 251
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController;->mTakePictureUri:Landroid/net/Uri;

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController;->mCropPictureUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/users/EditUserPhotoController;->appendOutputExtra(Landroid/content/Intent;Landroid/net/Uri;)V

    .line 254
    invoke-direct {p0, v0}, Lcom/android/settings/users/EditUserPhotoController;->appendCropExtras(Landroid/content/Intent;)V

    .line 255
    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 257
    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->disableDeathOnFileUriExposure()V

    .line 258
    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController;->mFragment:Landroid/app/Fragment;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v0, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 260
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    .line 261
    goto :goto_0

    .line 260
    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    throw v1

    .line 263
    :cond_0
    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController;->mTakePictureUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/settings/users/EditUserPhotoController;->onPhotoCropped(Landroid/net/Uri;Z)V

    .line 265
    :goto_0
    return-void
.end method

.method private static getPhotoSize(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 352
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_MAX_DIMENSIONS_URI:Landroid/net/Uri;

    const-string v2, "display_max_dim"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 356
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 357
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 359
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 357
    return v1

    .line 359
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method static loadNewUserPhotoBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 392
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private onPhotoCropped(Landroid/net/Uri;Z)V
    .locals 3
    .param p1, "data"    # Landroid/net/Uri;
    .param p2, "cropped"    # Z

    .line 285
    new-instance v0, Lcom/android/settings/users/EditUserPhotoController$6;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/settings/users/EditUserPhotoController$6;-><init>(Lcom/android/settings/users/EditUserPhotoController;ZLandroid/net/Uri;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Void;

    .line 348
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/users/EditUserPhotoController$6;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 349
    return-void
.end method

.method private showUpdatePhotoPopup()V
    .locals 8

    .line 142
    invoke-direct {p0}, Lcom/android/settings/users/EditUserPhotoController;->canTakePhoto()Z

    move-result v0

    .line 143
    .local v0, "canTakePhoto":Z
    invoke-direct {p0}, Lcom/android/settings/users/EditUserPhotoController;->canChoosePhoto()Z

    move-result v1

    .line 145
    .local v1, "canChoosePhoto":Z
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 146
    return-void

    .line 149
    :cond_0
    iget-object v2, p0, Lcom/android/settings/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 150
    .local v2, "context":Landroid/content/Context;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;>;"
    if-eqz v0, :cond_1

    .line 153
    const v4, 0x7f120fb8

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 154
    .local v4, "title":Ljava/lang/String;
    new-instance v5, Lcom/android/settings/users/EditUserPhotoController$2;

    invoke-direct {v5, p0}, Lcom/android/settings/users/EditUserPhotoController$2;-><init>(Lcom/android/settings/users/EditUserPhotoController;)V

    .line 160
    .local v5, "action":Ljava/lang/Runnable;
    new-instance v6, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;

    const-string v7, "no_set_user_icon"

    invoke-direct {v6, v2, v4, v7, v5}, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    .end local v4
    .end local v5
    :cond_1
    if-eqz v1, :cond_2

    .line 165
    const v4, 0x7f120fb6

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 166
    .restart local v4
    new-instance v5, Lcom/android/settings/users/EditUserPhotoController$3;

    invoke-direct {v5, p0}, Lcom/android/settings/users/EditUserPhotoController$3;-><init>(Lcom/android/settings/users/EditUserPhotoController;)V

    .line 172
    .restart local v5
    new-instance v6, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;

    const-string v7, "no_set_user_icon"

    invoke-direct {v6, v2, v4, v7, v5}, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    .end local v4
    .end local v5
    :cond_2
    new-instance v4, Landroid/widget/ListPopupWindow;

    invoke-direct {v4, v2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 178
    .local v4, "listPopupWindow":Landroid/widget/ListPopupWindow;
    iget-object v5, p0, Lcom/android/settings/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 179
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 180
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 181
    new-instance v5, Lcom/android/settings/users/EditUserPhotoController$RestrictedPopupMenuAdapter;

    invoke-direct {v5, v2, v3}, Lcom/android/settings/users/EditUserPhotoController$RestrictedPopupMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 183
    iget-object v5, p0, Lcom/android/settings/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07021e

    .line 184
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 183
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 185
    .local v5, "width":I
    invoke-virtual {v4, v5}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 186
    const v6, 0x800003

    invoke-virtual {v4, v6}, Landroid/widget/ListPopupWindow;->setDropDownGravity(I)V

    .line 188
    new-instance v6, Lcom/android/settings/users/EditUserPhotoController$4;

    invoke-direct {v6, p0, v4}, Lcom/android/settings/users/EditUserPhotoController$4;-><init>(Lcom/android/settings/users/EditUserPhotoController;Landroid/widget/ListPopupWindow;)V

    invoke-virtual {v4, v6}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 198
    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->show()V

    .line 199
    return-void
.end method

.method private takePhoto()V
    .locals 3

    .line 215
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController;->mTakePictureUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/users/EditUserPhotoController;->appendOutputExtra(Landroid/content/Intent;Landroid/net/Uri;)V

    .line 217
    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController;->mFragment:Landroid/app/Fragment;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v0, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 218
    return-void
.end method


# virtual methods
.method public getNewUserPhotoBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getNewUserPhotoDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->mNewUserPhotoDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 112
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 113
    return v0

    .line 115
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 116
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController;->mTakePictureUri:Landroid/net/Uri;

    .line 117
    .local v1, "pictureUri":Landroid/net/Uri;
    :goto_0
    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 130
    return v0

    .line 119
    :pswitch_0    # 0x3eb
    invoke-direct {p0, v1, v2}, Lcom/android/settings/users/EditUserPhotoController;->onPhotoCropped(Landroid/net/Uri;Z)V

    .line 120
    return v2

    .line 123
    :pswitch_1    # 0x3ea 0x3e9
    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->mTakePictureUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    invoke-direct {p0}, Lcom/android/settings/users/EditUserPhotoController;->cropPhoto()V

    goto :goto_1

    .line 126
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/settings/users/EditUserPhotoController;->copyAndCropPhoto(Landroid/net/Uri;)V

    .line 128
    :goto_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1    # 0x3e9
        :pswitch_1    # 0x3ea
        :pswitch_0    # 0x3eb
    .end packed-switch
.end method

.method removeNewUserPhotoBitmapFile()V
    .locals 3

    .line 396
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "NewUserPhoto.png"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 397
    return-void
.end method

.method saveNewUserPhotoBitmap()Ljava/io/File;
    .locals 6

    .line 375
    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 376
    return-object v1

    .line 379
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/settings/users/EditUserPhotoController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "NewUserPhoto.png"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 380
    .local v0, "file":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 381
    .local v2, "os":Ljava/io/OutputStream;
    iget-object v3, p0, Lcom/android/settings/users/EditUserPhotoController;->mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 382
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 383
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 384
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 385
    .end local v0
    .end local v2
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "EditUserPhotoController"

    const-string v3, "Cannot create temp file"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 388
    .end local v0
    return-object v1
.end method
