.class Lcom/android/settings/wifi/WifiSettingsGuide$SummaryProvider;
.super Ljava/lang/Object;
.source "WifiSettingsGuide.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;
.implements Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettingsGuide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field mSummaryHelper:Lcom/android/settings/wifi/WifiSummaryUpdater;

.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "summaryLoader"    # Lcom/android/settings/dashboard/SummaryLoader;

    .line 1373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1374
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettingsGuide$SummaryProvider;->mContext:Landroid/content/Context;

    .line 1375
    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettingsGuide$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 1376
    new-instance v0, Lcom/android/settings/wifi/WifiSummaryUpdater;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsGuide$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/wifi/WifiSummaryUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide$SummaryProvider;->mSummaryHelper:Lcom/android/settings/wifi/WifiSummaryUpdater;

    .line 1377
    return-void
.end method


# virtual methods
.method public onSummaryChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/String;

    .line 1387
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 1388
    return-void
.end method

.method public setListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .line 1382
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsGuide$SummaryProvider;->mSummaryHelper:Lcom/android/settings/wifi/WifiSummaryUpdater;

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/WifiSummaryUpdater;->register(Z)V

    .line 1383
    return-void
.end method
