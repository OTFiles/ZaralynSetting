.class public final synthetic Lcom/android/settings/language/-$$Lambda$LanguageAndInputSettings$VvwbgRiPWoRSuoMu5QPyPqZ5AEc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/language/-$$Lambda$LanguageAndInputSettings$VvwbgRiPWoRSuoMu5QPyPqZ5AEc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/language/-$$Lambda$LanguageAndInputSettings$VvwbgRiPWoRSuoMu5QPyPqZ5AEc;

    invoke-direct {v0}, Lcom/android/settings/language/-$$Lambda$LanguageAndInputSettings$VvwbgRiPWoRSuoMu5QPyPqZ5AEc;-><init>()V

    sput-object v0, Lcom/android/settings/language/-$$Lambda$LanguageAndInputSettings$VvwbgRiPWoRSuoMu5QPyPqZ5AEc;->INSTANCE:Lcom/android/settings/language/-$$Lambda$LanguageAndInputSettings$VvwbgRiPWoRSuoMu5QPyPqZ5AEc;

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

    invoke-static {p1, p2}, Lcom/android/settings/language/LanguageAndInputSettings;->lambda$static$0(Landroid/app/Activity;Lcom/android/settings/dashboard/SummaryLoader;)Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;

    move-result-object p1

    return-object p1
.end method
