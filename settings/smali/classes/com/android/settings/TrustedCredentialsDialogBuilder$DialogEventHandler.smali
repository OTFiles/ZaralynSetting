.class Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;
.super Ljava/lang/Object;
.source "TrustedCredentialsDialogBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsDialogBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DialogEventHandler"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mCertHolders:[Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

.field private mCurrentCertIndex:I

.field private mCurrentCertLayout:Landroid/view/View;

.field private final mDelegate:Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;

.field private mDialog:Landroid/app/AlertDialog;

.field private final mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mIsEnabledBtn:Z

.field private mNeedsApproval:Z

.field private mNegativeButton:Landroid/widget/Button;

.field private mPositiveButton:Landroid/widget/Button;

.field private final mRootContainer:Landroid/widget/LinearLayout;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;Z)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "delegate"    # Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;
    .param p3, "isEnabledBtn"    # Z

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertIndex:I

    .line 105
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCertHolders:[Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertLayout:Landroid/view/View;

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mIsEnabledBtn:Z

    .line 110
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    .line 111
    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 112
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mUserManager:Landroid/os/UserManager;

    .line 113
    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDelegate:Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;

    .line 115
    iput-boolean p3, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mIsEnabledBtn:Z

    .line 116
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mRootContainer:Landroid/widget/LinearLayout;

    .line 117
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mRootContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    .line 89
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mRootContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;)Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    .line 89
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDelegate:Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    .line 89
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->nextOrDismiss()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;
    .param p1, "x1"    # Landroid/view/View;

    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->addAndAnimateNewContent(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    .line 89
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    .line 89
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private addAndAnimateNewContent(Landroid/view/View;)V
    .locals 2
    .param p1, "nextCertLayout"    # Landroid/view/View;

    .line 357
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertLayout:Landroid/view/View;

    .line 358
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mRootContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 359
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mRootContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 361
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mRootContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$4;

    invoke-direct {v1, p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$4;-><init>(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 378
    return-void
.end method

.method private animateOldContent(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 347
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 348
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 349
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    .line 350
    const v2, 0x10c000f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 352
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 353
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 354
    return-void
.end method

.method private animateViewTransition(Landroid/view/View;)V
    .locals 1
    .param p1, "nextCertView"    # Landroid/view/View;

    .line 337
    new-instance v0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$3;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$3;-><init>(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->animateOldContent(Ljava/lang/Runnable;)V

    .line 343
    return-void
.end method

.method private static getButtonLabel(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)I
    .locals 1
    .param p0, "certHolder"    # Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .line 329
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->isSystemCert()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    const v0, 0x7f120e9f

    goto :goto_0

    .line 331
    :cond_0
    const v0, 0x7f120e9d

    goto :goto_0

    .line 332
    :cond_1
    const v0, 0x7f120ea1

    .line 329
    :goto_0
    return v0
.end method

.method private getCertLayout(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Landroid/widget/LinearLayout;
    .locals 10
    .param p1, "certHolder"    # Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v1, "titles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDelegate:Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;

    invoke-interface {v2, p1}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;->getX509CertsFromCertHolder(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/util/List;

    move-result-object v2

    .line 287
    .local v2, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    if-eqz v2, :cond_0

    .line 288
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 289
    .local v4, "certificate":Ljava/security/cert/X509Certificate;
    new-instance v5, Landroid/net/http/SslCertificate;

    invoke-direct {v5, v4}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 290
    .local v5, "sslCert":Landroid/net/http/SslCertificate;
    iget-object v6, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v6}, Landroid/net/http/SslCertificate;->inflateCertificateView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    invoke-virtual {v5}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    .end local v4
    .end local v5
    goto :goto_0

    .line 295
    :cond_0
    new-instance v3, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    const v5, 0x1090008

    invoke-direct {v3, v4, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 298
    .local v3, "arrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v4, 0x1090009

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 299
    new-instance v4, Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 300
    .local v4, "spinner":Landroid/widget/Spinner;
    invoke-virtual {v4, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 301
    new-instance v5, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$2;

    invoke-direct {v5, p0, v0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$2;-><init>(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 315
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 316
    .local v5, "certLayout":Landroid/widget/LinearLayout;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 317
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 318
    const/4 v6, 0x0

    move v7, v6

    .local v7, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 319
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 321
    .local v8, "certificateView":Landroid/view/View;
    if-nez v7, :cond_1

    move v9, v6

    goto :goto_2

    :cond_1
    const/16 v9, 0x8

    :goto_2
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 322
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 318
    .end local v8
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 325
    .end local v7
    :cond_2
    return-object v5
.end method

.method private getCurrentCertInfo()Lcom/android/settings/TrustedCredentialsSettings$CertHolder;
    .locals 2

    .line 192
    iget v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertIndex:I

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCertHolders:[Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCertHolders:[Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    iget v1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertIndex:I

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private isUserSecure(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 216
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 217
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    const/4 v1, 0x1

    return v1

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 221
    .local v1, "parentUser":Landroid/content/pm/UserInfo;
    if-nez v1, :cond_1

    .line 222
    const/4 v2, 0x0

    return v2

    .line 224
    :cond_1
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    return v2
.end method

.method public static synthetic lambda$l-T7FQ-tmXq7wOC1gAhDRR6fZzQ(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->onCredentialConfirmed(I)V

    return-void
.end method

.method private nextOrDismiss()V
    .locals 2

    .line 196
    iget v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertIndex:I

    .line 198
    :goto_0
    iget v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertIndex:I

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCertHolders:[Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->getCurrentCertInfo()Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 199
    iget v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertIndex:I

    goto :goto_0

    .line 202
    :cond_0
    iget v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertIndex:I

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCertHolders:[Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 203
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 204
    return-void

    .line 207
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->updateViewContainer()V

    .line 208
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->updatePositiveButton()V

    .line 209
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->updateNegativeButton()V

    .line 210
    return-void
.end method

.method private onClickEnableOrDisable()V
    .locals 5

    .line 162
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->getCurrentCertInfo()Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    .line 163
    .local v0, "certHolder":Lcom/android/settings/TrustedCredentialsSettings$CertHolder;
    new-instance v1, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$1;-><init>(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V

    .line 170
    .local v1, "onConfirm":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->isSystemCert()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 172
    const/4 v2, -0x1

    invoke-interface {v1, v3, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0

    .line 174
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f120ea0

    .line 175
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x1040013

    .line 176
    invoke-virtual {v2, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x1040009

    .line 177
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 178
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 181
    :goto_0
    return-void
.end method

.method private onClickOk()V
    .locals 0

    .line 149
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->nextOrDismiss()V

    .line 150
    return-void
.end method

.method private onClickTrust()V
    .locals 5

    .line 153
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->getCurrentCertInfo()Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    .line 154
    .local v0, "certHolder":Lcom/android/settings/TrustedCredentialsSettings$CertHolder;
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDelegate:Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;

    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->getUserId()I

    move-result v2

    new-instance v3, Lcom/android/settings/-$$Lambda$TrustedCredentialsDialogBuilder$DialogEventHandler$l-T7FQ-tmXq7wOC1gAhDRR6fZzQ;

    invoke-direct {v3, p0}, Lcom/android/settings/-$$Lambda$TrustedCredentialsDialogBuilder$DialogEventHandler$l-T7FQ-tmXq7wOC1gAhDRR6fZzQ;-><init>(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;)V

    invoke-interface {v1, v2, v3}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;->startConfirmCredentialIfNotConfirmed(ILjava/util/function/IntConsumer;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->getUserId()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/admin/DevicePolicyManager;->approveCaCert(Ljava/lang/String;IZ)Z

    .line 157
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->nextOrDismiss()V

    .line 159
    :cond_0
    return-void
.end method

.method private onCredentialConfirmed(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 184
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mNeedsApproval:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->getCurrentCertInfo()Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->getCurrentCertInfo()Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->getUserId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->onClickTrust()V

    .line 189
    :cond_0
    return-void
.end method

.method private updateButton(ILjava/lang/CharSequence;)Landroid/widget/Button;
    .locals 2
    .param p1, "buttonType"    # I
    .param p2, "displayText"    # Ljava/lang/CharSequence;

    .line 262
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 263
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 264
    .local v0, "button":Landroid/widget/Button;
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 265
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    return-object v0
.end method

.method private updateNegativeButton()V
    .locals 6

    .line 245
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->getCurrentCertInfo()Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    .line 246
    .local v0, "certHolder":Lcom/android/settings/TrustedCredentialsSettings$CertHolder;
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mUserManager:Landroid/os/UserManager;

    const-string v2, "no_config_credentials"

    new-instance v3, Landroid/os/UserHandle;

    .line 248
    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->getUserId()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 246
    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 249
    .local v1, "showRemoveButton":Z
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->getButtonLabel(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 250
    .local v2, "displayText":Ljava/lang/CharSequence;
    const/4 v3, -0x2

    invoke-direct {p0, v3, v2}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->updateButton(ILjava/lang/CharSequence;)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mNegativeButton:Landroid/widget/Button;

    .line 251
    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mNegativeButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/16 v4, 0x8

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 252
    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mNegativeButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060165

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 253
    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mNegativeButton:Landroid/widget/Button;

    iget-boolean v4, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mIsEnabledBtn:Z

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 254
    return-void
.end method

.method private updatePositiveButton()V
    .locals 6

    .line 228
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->getCurrentCertInfo()Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    .line 229
    .local v0, "certHolder":Lcom/android/settings/TrustedCredentialsSettings$CertHolder;
    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->isSystemCert()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 230
    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->getUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->isUserSecure(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 231
    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->getAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->getUserId()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/app/admin/DevicePolicyManager;->isCaCertApproved(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mNeedsApproval:Z

    .line 233
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    .line 234
    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->getUserId()I

    move-result v4

    .line 233
    invoke-static {v1, v4}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOrDeviceOwner(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    if-eqz v1, :cond_1

    move v2, v3

    nop

    :cond_1
    move v1, v2

    .line 237
    .local v1, "isProfileOrDeviceOwner":Z
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_2

    iget-boolean v3, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mNeedsApproval:Z

    if-eqz v3, :cond_2

    .line 238
    const v3, 0x7f120ea4

    goto :goto_1

    .line 239
    :cond_2
    const v3, 0x104000a

    .line 237
    :goto_1
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 240
    .local v2, "displayText":Ljava/lang/CharSequence;
    const/4 v3, -0x1

    invoke-direct {p0, v3, v2}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->updateButton(ILjava/lang/CharSequence;)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mPositiveButton:Landroid/widget/Button;

    .line 241
    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mPositiveButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060165

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 242
    return-void
.end method

.method private updateViewContainer()V
    .locals 4

    .line 271
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->getCurrentCertInfo()Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    .line 272
    .local v0, "certHolder":Lcom/android/settings/TrustedCredentialsSettings$CertHolder;
    invoke-direct {p0, v0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->getCertLayout(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 275
    .local v1, "nextCertLayout":Landroid/widget/LinearLayout;
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertLayout:Landroid/view/View;

    if-nez v2, :cond_0

    .line 276
    iput-object v1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertLayout:Landroid/view/View;

    .line 277
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mRootContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 279
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->animateViewTransition(Landroid/view/View;)V

    .line 281
    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 137
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mPositiveButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 138
    iget-boolean v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mNeedsApproval:Z

    if-eqz v0, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->onClickTrust()V

    goto :goto_0

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->onClickOk()V

    goto :goto_0

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mNegativeButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 144
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->onClickEnableOrDisable()V

    .line 146
    :cond_2
    :goto_0
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .line 132
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->nextOrDismiss()V

    .line 133
    return-void
.end method

.method public setCertHolders([Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 0
    .param p1, "certHolder"    # [Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .line 125
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCertHolders:[Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .line 126
    return-void
.end method

.method public setDialog(Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/AlertDialog;

    .line 121
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDialog:Landroid/app/AlertDialog;

    .line 122
    return-void
.end method
