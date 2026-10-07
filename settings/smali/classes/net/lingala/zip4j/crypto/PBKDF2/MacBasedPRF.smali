.class public Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;
.super Ljava/lang/Object;
.source "MacBasedPRF.java"

# interfaces
.implements Lnet/lingala/zip4j/crypto/PBKDF2/PRF;


# instance fields
.field protected hLen:I

.field protected mac:Ljavax/crypto/Mac;

.field protected macAlgorithm:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "macAlgorithm"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->macAlgorithm:Ljava/lang/String;

    .line 44
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->mac:Ljavax/crypto/Mac;

    .line 45
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v0

    iput v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->hLen:I

    .line 51
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public doFinal()[B
    .locals 1

    .line 78
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    .line 79
    .local v0, "r":[B
    return-object v0
.end method

.method public doFinal([B)[B
    .locals 1
    .param p1, "M"    # [B

    .line 73
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    .line 74
    .local v0, "r":[B
    return-object v0
.end method

.method public getHLen()I
    .locals 1

    .line 84
    iget v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->hLen:I

    return v0
.end method

.method public init([B)V
    .locals 3
    .param p1, "P"    # [B

    .line 91
    :try_start_0
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->mac:Ljavax/crypto/Mac;

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->macAlgorithm:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 97
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public update([BII)V
    .locals 2
    .param p1, "U"    # [B
    .param p2, "start"    # I
    .param p3, "len"    # I

    .line 111
    :try_start_0
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Mac;->update([BII)V

    .line 115
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
