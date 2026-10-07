.class Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SummaryProvider;
.super Ljava/lang/Object;
.source "InputMethodAndLanguageSettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "summaryLoader"    # Lcom/android/settings/dashboard/SummaryLoader;

    .line 686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 687
    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SummaryProvider;->mContext:Landroid/content/Context;

    .line 688
    iput-object p2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 689
    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .line 693
    if-eqz p1, :cond_0

    .line 694
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->access$200(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 695
    .local v0, "localeNames":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v1, p0, v0}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 697
    .end local v0
    :cond_0
    return-void
.end method
