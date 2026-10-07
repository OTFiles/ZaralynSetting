.class public Lcom/android/settings/utils/ManagedServiceSettings$Config;
.super Ljava/lang/Object;
.source "ManagedServiceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/utils/ManagedServiceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;
    }
.end annotation


# instance fields
.field public final emptyText:I

.field public final intentAction:Ljava/lang/String;

.field public final noun:Ljava/lang/String;

.field public final permission:Ljava/lang/String;

.field public final setting:Ljava/lang/String;

.field public final tag:Ljava/lang/String;

.field public final warningDialogSummary:I

.field public final warningDialogTitle:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "intentAction"    # Ljava/lang/String;
    .param p4, "permission"    # Ljava/lang/String;
    .param p5, "noun"    # Ljava/lang/String;
    .param p6, "warningDialogTitle"    # I
    .param p7, "warningDialogSummary"    # I
    .param p8, "emptyText"    # I

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->tag:Ljava/lang/String;

    .line 241
    iput-object p2, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->setting:Ljava/lang/String;

    .line 242
    iput-object p3, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->intentAction:Ljava/lang/String;

    .line 243
    iput-object p4, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->permission:Ljava/lang/String;

    .line 244
    iput-object p5, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->noun:Ljava/lang/String;

    .line 245
    iput p6, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->warningDialogTitle:I

    .line 246
    iput p7, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->warningDialogSummary:I

    .line 247
    iput p8, p0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->emptyText:I

    .line 248
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILcom/android/settings/utils/ManagedServiceSettings$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # I
    .param p7, "x6"    # I
    .param p8, "x7"    # I
    .param p9, "x8"    # Lcom/android/settings/utils/ManagedServiceSettings$1;

    .line 228
    invoke-direct/range {p0 .. p8}, Lcom/android/settings/utils/ManagedServiceSettings$Config;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-void
.end method
