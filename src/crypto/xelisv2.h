// Orginally from https://github.com/xelis-project/xelis-hash/blob/master/C/xelis_hash_v2.h
// By EhssanD

// Copyright unknown

#ifndef BITCOIN_CRYPTO_XELISV2_H
#define BITCOIN_CRYPTO_XELISV2_H

void xelis_hash_v2(const void* data, size_t len, uint8_t hashResult[32]);

//template<typename T1>
//void pre_xelis_hash_v2(const T1 pbegin, const T1 pend, uint8_t hash_result[32]);

extern int HardwareAES;
#endif // BITCOIN_CRYPTO_XELISV2_H
