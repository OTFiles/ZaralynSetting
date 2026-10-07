.class Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private itemview:Landroid/view/View;

.field private mSubjectPrimaryView:Landroid/widget/TextView;

.field private mSubjectSecondaryView:Landroid/widget/TextView;

.field private mSwitch:Landroid/widget/Switch;

.field final synthetic this$1:Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;


# direct methods
.method private constructor <init>(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;)V
    .locals 0

    .line 513
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->this$1:Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;Lcom/android/settings/TrustedCredentialsSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;
    .param p2, "x1"    # Lcom/android/settings/TrustedCredentialsSettings$1;

    .line 513
    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;-><init>(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;

    .line 513
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->mSubjectPrimaryView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .line 513
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->mSubjectPrimaryView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;

    .line 513
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->mSubjectSecondaryView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .line 513
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->mSubjectSecondaryView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;

    .line 513
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;Landroid/widget/Switch;)Landroid/widget/Switch;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/Switch;

    .line 513
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->mSwitch:Landroid/widget/Switch;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;

    .line 513
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->itemview:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/view/View;

    .line 513
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->itemview:Landroid/view/View;

    return-object p1
.end method
