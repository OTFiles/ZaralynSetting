.class public final enum Lcom/android/settings/password/ScreenLockType;
.super Ljava/lang/Enum;
.source "ScreenLockType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/password/ScreenLockType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/password/ScreenLockType;

.field public static final enum MANAGED:Lcom/android/settings/password/ScreenLockType;

.field private static final MAX_QUALITY:Lcom/android/settings/password/ScreenLockType;

.field private static final MIN_QUALITY:Lcom/android/settings/password/ScreenLockType;

.field public static final enum NONE:Lcom/android/settings/password/ScreenLockType;

.field public static final enum PASSWORD:Lcom/android/settings/password/ScreenLockType;

.field public static final enum PATTERN:Lcom/android/settings/password/ScreenLockType;

.field public static final enum PIN:Lcom/android/settings/password/ScreenLockType;

.field public static final enum SWIPE:Lcom/android/settings/password/ScreenLockType;

.field public static final enum UNFACE:Lcom/android/settings/password/ScreenLockType;


# instance fields
.field public final defaultQuality:I

.field public final maxQuality:I

.field public final preferenceKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 27
    new-instance v0, Lcom/android/settings/password/ScreenLockType;

    const-string v1, "NONE"

    const-string v2, "unlock_set_off"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/password/ScreenLockType;->NONE:Lcom/android/settings/password/ScreenLockType;

    .line 30
    new-instance v0, Lcom/android/settings/password/ScreenLockType;

    const-string v1, "SWIPE"

    const-string v2, "unlock_set_none"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/password/ScreenLockType;->SWIPE:Lcom/android/settings/password/ScreenLockType;

    .line 33
    new-instance v0, Lcom/android/settings/password/ScreenLockType;

    const-string v1, "PATTERN"

    const-string v2, "unlock_set_pattern"

    const/high16 v5, 0x10000

    const/4 v6, 0x2

    invoke-direct {v0, v1, v6, v5, v2}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/password/ScreenLockType;->PATTERN:Lcom/android/settings/password/ScreenLockType;

    .line 36
    new-instance v0, Lcom/android/settings/password/ScreenLockType;

    const-string v8, "PIN"

    const-string v12, "unlock_set_pin"

    const/4 v9, 0x3

    const/high16 v10, 0x20000

    const/high16 v11, 0x30000

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/password/ScreenLockType;->PIN:Lcom/android/settings/password/ScreenLockType;

    .line 40
    new-instance v0, Lcom/android/settings/password/ScreenLockType;

    const-string v14, "PASSWORD"

    const-string v18, "unlock_set_password"

    const/4 v15, 0x4

    const/high16 v16, 0x40000

    const/high16 v17, 0x60000

    move-object v13, v0

    invoke-direct/range {v13 .. v18}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/password/ScreenLockType;->PASSWORD:Lcom/android/settings/password/ScreenLockType;

    .line 44
    new-instance v0, Lcom/android/settings/password/ScreenLockType;

    const-string v1, "MANAGED"

    const-string v2, "unlock_set_managed"

    const/4 v7, 0x5

    const/high16 v8, 0x80000

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/password/ScreenLockType;->MANAGED:Lcom/android/settings/password/ScreenLockType;

    .line 47
    new-instance v0, Lcom/android/settings/password/ScreenLockType;

    const-string v1, "UNFACE"

    const-string v2, "unlock_set_face_unlock"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v5, v2}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/password/ScreenLockType;->UNFACE:Lcom/android/settings/password/ScreenLockType;

    .line 25
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/settings/password/ScreenLockType;

    sget-object v1, Lcom/android/settings/password/ScreenLockType;->NONE:Lcom/android/settings/password/ScreenLockType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/password/ScreenLockType;->SWIPE:Lcom/android/settings/password/ScreenLockType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/password/ScreenLockType;->PATTERN:Lcom/android/settings/password/ScreenLockType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/settings/password/ScreenLockType;->PIN:Lcom/android/settings/password/ScreenLockType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/password/ScreenLockType;->PASSWORD:Lcom/android/settings/password/ScreenLockType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/password/ScreenLockType;->MANAGED:Lcom/android/settings/password/ScreenLockType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/settings/password/ScreenLockType;->UNFACE:Lcom/android/settings/password/ScreenLockType;

    aput-object v1, v0, v8

    sput-object v0, Lcom/android/settings/password/ScreenLockType;->$VALUES:[Lcom/android/settings/password/ScreenLockType;

    .line 53
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->NONE:Lcom/android/settings/password/ScreenLockType;

    sput-object v0, Lcom/android/settings/password/ScreenLockType;->MIN_QUALITY:Lcom/android/settings/password/ScreenLockType;

    .line 54
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->MANAGED:Lcom/android/settings/password/ScreenLockType;

    sput-object v0, Lcom/android/settings/password/ScreenLockType;->MAX_QUALITY:Lcom/android/settings/password/ScreenLockType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0
    .param p3, "defaultQuality"    # I
    .param p4, "maxQuality"    # I
    .param p5, "preferenceKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 77
    iput p3, p0, Lcom/android/settings/password/ScreenLockType;->defaultQuality:I

    .line 78
    iput p4, p0, Lcom/android/settings/password/ScreenLockType;->maxQuality:I

    .line 79
    iput-object p5, p0, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    .line 80
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 6
    .param p3, "quality"    # I
    .param p4, "preferenceKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 73
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/password/ScreenLockType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    .line 74
    return-void
.end method

.method public static fromKey(Ljava/lang/String;)Lcom/android/settings/password/ScreenLockType;
    .locals 5
    .param p0, "key"    # Ljava/lang/String;

    .line 108
    invoke-static {}, Lcom/android/settings/password/ScreenLockType;->values()[Lcom/android/settings/password/ScreenLockType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 109
    .local v3, "lock":Lcom/android/settings/password/ScreenLockType;
    iget-object v4, v3, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 110
    return-object v3

    .line 108
    .end local v3
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static fromQuality(I)Lcom/android/settings/password/ScreenLockType;
    .locals 1
    .param p0, "quality"    # I

    .line 89
    if-eqz p0, :cond_4

    const/high16 v0, 0x10000

    if-eq p0, v0, :cond_3

    const/high16 v0, 0x20000

    if-eq p0, v0, :cond_2

    const/high16 v0, 0x30000

    if-eq p0, v0, :cond_2

    const/high16 v0, 0x40000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x50000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x60000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x80000

    if-eq p0, v0, :cond_0

    .line 104
    const/4 v0, 0x0

    return-object v0

    .line 100
    :cond_0
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->MANAGED:Lcom/android/settings/password/ScreenLockType;

    return-object v0

    .line 98
    :cond_1
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PASSWORD:Lcom/android/settings/password/ScreenLockType;

    return-object v0

    .line 94
    :cond_2
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PIN:Lcom/android/settings/password/ScreenLockType;

    return-object v0

    .line 91
    :cond_3
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PATTERN:Lcom/android/settings/password/ScreenLockType;

    return-object v0

    .line 102
    :cond_4
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->SWIPE:Lcom/android/settings/password/ScreenLockType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/password/ScreenLockType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lcom/android/settings/password/ScreenLockType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/password/ScreenLockType;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/password/ScreenLockType;
    .locals 1

    .line 25
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->$VALUES:[Lcom/android/settings/password/ScreenLockType;

    invoke-virtual {v0}, [Lcom/android/settings/password/ScreenLockType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/password/ScreenLockType;

    return-object v0
.end method
