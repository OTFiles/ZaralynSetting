.class public Lcom/android/settings/localepicker/LocaleFeatureProviderImpl;
.super Ljava/lang/Object;
.source "LocaleFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/localepicker/LocaleFeatureProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocaleNames()Ljava/lang/String;
    .locals 3

    .line 29
    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    .line 30
    .local v0, "locales":Landroid/os/LocaleList;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 31
    .local v1, "displayLocale":Ljava/util/Locale;
    nop

    .line 32
    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/LocaleHelper;->getDisplayLocaleList(Landroid/os/LocaleList;Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-static {v2, v1}, Lcom/android/internal/app/LocaleHelper;->toSentenceCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
