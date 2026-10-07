.class public final synthetic Lcom/android/settings/deviceinfo/aboutphone/-$$Lambda$MyDeviceInfoFragment$pzCelMuIMGm16asu34w_Ge8IYsk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/deviceinfo/aboutphone/-$$Lambda$MyDeviceInfoFragment$pzCelMuIMGm16asu34w_Ge8IYsk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/deviceinfo/aboutphone/-$$Lambda$MyDeviceInfoFragment$pzCelMuIMGm16asu34w_Ge8IYsk;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/aboutphone/-$$Lambda$MyDeviceInfoFragment$pzCelMuIMGm16asu34w_Ge8IYsk;-><init>()V

    sput-object v0, Lcom/android/settings/deviceinfo/aboutphone/-$$Lambda$MyDeviceInfoFragment$pzCelMuIMGm16asu34w_Ge8IYsk;->INSTANCE:Lcom/android/settings/deviceinfo/aboutphone/-$$Lambda$MyDeviceInfoFragment$pzCelMuIMGm16asu34w_Ge8IYsk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createSummaryProvider(Landroid/app/Activity;Lcom/android/settings/dashboard/SummaryLoader;)Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;
    .locals 0

    invoke-static {p1, p2}, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->lambda$static$0(Landroid/app/Activity;Lcom/android/settings/dashboard/SummaryLoader;)Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;

    move-result-object p1

    return-object p1
.end method
